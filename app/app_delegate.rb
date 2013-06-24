class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    UIBarButtonItem.configureFlatButtonsWithColor(sharedTheme.flatButtonColor,
                                 highlightedColor:sharedTheme.flatHighlightedButtonColor,
                                     cornerRadius:sharedTheme.buttonCornerRadius)

    ThemeManager.customizeAppAppearance

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @navigationController = UINavigationController.alloc.init
    @navigationController.pushViewController(TasksListController.controller,
                                             animated:false)

    @window.rootViewController = @navigationController
    @window.makeKeyAndVisible

    if App::Persistence['authToken'].nil?
      showWelcomeController
    end

    return true
  end

  def sharedTheme
    @sharedTheme ||= FlatUITheme.new
  end

  def showWelcomeController
    @welcomeController = WelcomeController.alloc.init
    @welcomeNavigationController = UINavigationController.alloc.init
    @welcomeNavigationController.pushViewController(@welcomeController, animated:false)

    TasksListController.controller.presentModalViewController(@welcomeNavigationController,
                                                              animated:false)
  end

  def logout
    headers = {
      'Content-Type' => 'application/json',
      'Authorization' => "Token token=\"#{App::Persistence['authToken']}\""
    }

    BW::HTTP.delete("http://localhost:3000/api/v1/sessions.json", { headers: headers }) do |response|
      App::Persistence['authToken'] = nil
      showWelcomeController
    end
  end
end