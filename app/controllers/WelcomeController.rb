class WelcomeController < UIViewController

  def self.controller
    @controller ||= WelcomeController.alloc.initWithNibName(nil, bundle:nil)
  end

  def viewDidLoad
    super

    theme = UIApplication.sharedApplication.delegate.sharedTheme

    self.title = "Welcome"
    self.view.backgroundColor = UIColor.whiteColor

    @containerView = UIView.alloc.initWithFrame([[0, 50], [self.view.frame.size.width, 100]])

    @welcomeTitleLabel = UILabel.alloc.initWithFrame([[10, 10], [self.view.frame.size.width - 20, 20]])
    @welcomeTitleLabel.font = UIFont.boldFlatFontOfSize(20)
    @welcomeTitleLabel.color = UIColor.asbestosColor
    @welcomeTitleLabel.text = 'Welcome to the App!'

    @containerView.addSubview(@welcomeTitleLabel)

    @welcomeLabel = UILabel.alloc.initWithFrame([[10, 35], [self.view.frame.size.width - 20, 20]])
    @welcomeLabel.font = UIFont.boldFlatFontOfSize(16)
    @welcomeLabel.color = UIColor.concreteColor
    @welcomeLabel.text = 'Please select an option to start using it!'

    @containerView.addSubview(@welcomeLabel)

    @registerButton = FUIButton.alloc.initWithFrame([[10, 65], [(self.view.frame.size.width  / 2) - 15, 40]])
    @registerButton.buttonColor = UIColor.turquoiseColor
    @registerButton.shadowColor = UIColor.greenSeaColor
    @registerButton.shadowHeight = 3
    @registerButton.cornerRadius = theme.buttonCornerRadius
    @registerButton.titleLabel.font = UIFont.boldFlatFontOfSize(16)
    @registerButton.setTitleColor(UIColor.cloudsColor, forState:UIControlStateNormal)
    @registerButton.setTitleColor(UIColor.cloudsColor, forState:UIControlStateHighlighted)
    @registerButton.setTitle('Register', forState: UIControlStateNormal)
    @registerButton.addTarget(self,
                              action:'register',
                              forControlEvents:UIControlEventTouchUpInside)

    @containerView.addSubview(@registerButton)

    @loginButton = FUIButton.alloc.initWithFrame([[(self.view.frame.size.width  / 2) + 5, 65], [(self.view.frame.size.width  / 2) - 15, 40]])
    @loginButton.buttonColor = UIColor.turquoiseColor
    @loginButton.shadowColor = UIColor.greenSeaColor
    @loginButton.shadowHeight = 3
    @loginButton.cornerRadius = theme.buttonCornerRadius
    @loginButton.titleLabel.font = UIFont.boldFlatFontOfSize(16)
    @loginButton.setTitleColor(UIColor.cloudsColor, forState:UIControlStateNormal)
    @loginButton.setTitleColor(UIColor.cloudsColor, forState:UIControlStateHighlighted)
    @loginButton.setTitle('Login', forState: UIControlStateNormal)
    @loginButton.addTarget(self,
                           action:'login',
                           forControlEvents:UIControlEventTouchUpInside)

    @containerView.addSubview(@loginButton)

    # Finally add the scrollview to the main view
    self.view.addSubview(@containerView)
  end

  def register
    @registerController = RegisterController.alloc.init
    self.navigationController.pushViewController(@registerController, animated:true)
  end

  def login
    @loginController = LoginController.alloc.init
    self.navigationController.pushViewController(@loginController, animated:true)
  end
end