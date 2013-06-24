class ThemeManager

  def self.customizeAppAppearance
    theme = UIApplication.sharedApplication.delegate.sharedTheme

    if theme.statusBarStyle
      UIApplication.sharedApplication.setStatusBarStyle(theme.statusBarStyle, animated:false)
    end

    navigationBackgroundForBarMetricsDefault = theme.navigationBackgroundForBarMetrics(UIBarMetricsDefault)
    if navigationBackgroundForBarMetricsDefault
      UINavigationBar.appearance.setBackgroundImage(navigationBackgroundForBarMetricsDefault, forBarMetrics:UIBarMetricsDefault)
    end

    navigationBackgroundForBarMetricsLandscape = theme.navigationBackgroundForBarMetrics(UIBarMetricsLandscapePhone)
    if navigationBackgroundForBarMetricsLandscape
      UINavigationBar.appearance.setBackgroundImage(navigationBackgroundForBarMetricsLandscape, forBarMetrics:UIBarMetricsDefault)
    end

    barButtonBackgroundNormalBordered = theme.barButtonBackgroundForState(UIControlStateNormal,
                                                                          style:UIBarButtonItemStyleBordered,
                                                                          barMetrics:UIBarMetricsDefault)
    if barButtonBackgroundNormalBordered
      UIBarButtonItem.appearance.setBackgroundImage(
        barButtonBackgroundNormalBordered,
        forState:UIControlStateNormal,
        barMetrics:UIBarMetricsDefault)
    end

    barButtonBackgroundNormal = theme.backBackgroundForState(UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    if barButtonBackgroundNormal
      UIBarButtonItem.appearance.setBackButtonBackgroundImage(
        barButtonBackgroundNormal,
        forState:UIControlStateNormal,
        barMetrics:UIBarMetricsDefault)
    end

    barButtonBackgroundHighlighted = theme.backBackgroundForState(UIControlStateHighlighted, barMetrics:UIBarMetricsDefault)
    if barButtonBackgroundHighlighted
      UIBarButtonItem.appearance.setBackButtonBackgroundImage(
        barButtonBackgroundHighlighted,
        forState:UIControlStateHighlighted,
        barMetrics:UIBarMetricsDefault)
    end

    barButtonBackgroundNormalLandscape = theme.backBackgroundForState(UIControlStateNormal, barMetrics:UIBarMetricsLandscapePhone)
    if barButtonBackgroundNormalLandscape
      UIBarButtonItem.appearance.setBackButtonBackgroundImage(
        barButtonBackgroundNormalLandscape,
        forState:UIControlStateNormal,
        barMetrics:UIBarMetricsLandscapePhone)
    end

    barButtonBackgroundHighlightedLandscape = theme.backBackgroundForState(UIControlStateHighlighted, barMetrics:UIBarMetricsLandscapePhone)
    if barButtonBackgroundHighlightedLandscape
      UIBarButtonItem.appearance.setBackButtonBackgroundImage(
        barButtonBackgroundHighlightedLandscape,
        forState:UIControlStateHighlighted,
        barMetrics:UIBarMetricsLandscapePhone)
    end

    segmentedControlNormal = theme.segmentedBackgroundForState(UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    if segmentedControlNormal
      UISegmentedControl.appearance.setBackgroundImage(
        segmentedControlNormal,
        forState:UIControlStateNormal,
        barMetrics:UIBarMetricsDefault)
    end

    segmentedControlSelected = theme.segmentedBackgroundForState(UIControlStateSelected, barMetrics:UIBarMetricsDefault)
    if segmentedControlSelected
      UISegmentedControl.appearance.setBackgroundImage(
        segmentedControlSelected,
        forState:UIControlStateSelected,
        barMetrics:UIBarMetricsDefault)
    end

    segmentedControlNormalLandscape = theme.segmentedBackgroundForState(UIControlStateNormal, barMetrics:UIBarMetricsLandscapePhone)
    if segmentedControlNormalLandscape
      UISegmentedControl.appearance.setBackgroundImage(
        segmentedControlNormalLandscape,
        forState:UIControlStateSelected,
        barMetrics:UIBarMetricsDefault)
    end

    segmentedControlSelectedLandscape = theme.segmentedBackgroundForState(UIControlStateSelected, barMetrics:UIBarMetricsLandscapePhone)
    if segmentedControlSelectedLandscape
      UISegmentedControl.appearance.setBackgroundImage(
        segmentedControlSelectedLandscape,
        forState:UIControlStateSelected,
        barMetrics:UIBarMetricsDefault)
    end

    segmentedDivider = theme.segmentedDividerForBarMetrics(UIBarMetricsDefault)
    if segmentedDivider
      UISegmentedControl.appearance.setDividerImage(
        segmentedDivider,
        forLeftSegmentState:UIControlStateNormal,
        rightSegmentState:UIControlStateNormal,
        barMetrics:UIBarMetricsDefault)
    end

    segmentedDividerLandscape = theme.segmentedDividerForBarMetrics(UIBarMetricsLandscapePhone)
    if segmentedDividerLandscape
      UISegmentedControl.appearance.setDividerImage(
        segmentedDividerLandscape,
        forLeftSegmentState:UIControlStateNormal,
        rightSegmentState:UIControlStateNormal,
        barMetrics:UIBarMetricsLandscapePhone)
    end

    if theme.tabBarBackground
      UITabBar.appearance.setBackgroundImage(theme.tabBarBackground)
    end
    if theme.tabBarSelectionIndicator
      UITabBar.appearance.setSelectionIndicatorImage(theme.tabBarSelectionIndicator)
    end

    toolbarBackground = theme.toolbarBackgroundForBarMetrics(UIBarMetricsDefault)
    if toolbarBackground
      UIToolbar.appearance.setBackgroundImage(
        toolbarBackground,
        forToolbarPosition:UIToolbarPositionAny,
        barMetrics:UIBarMetricsDefault)
    end

    toolbarBackgroundLandscape = theme.toolbarBackgroundForBarMetrics(UIBarMetricsLandscapePhone)
    if toolbarBackgroundLandscape
      UIToolbar.appearance.setBackgroundImage(
        toolbarBackgroundLandscape,
        forToolbarPosition:UIToolbarPositionAny,
        barMetrics:UIBarMetricsLandscapePhone)
    end

    if theme.searchBackground
      UISearchBar.appearance.setBackgroundImage(theme.searchBackground)
      UISearchBar.appearance.setScopeBarBackgroundImage(theme.searchBackground)
    end

    if theme.searchFieldImage
      UISearchBar.appearance.setSearchFieldBackgroundImage(theme.searchFieldImage, forState:UIControlStateNormal)
    end

    searchBarIconSearch = theme.searchImageForIcon(UISearchBarIconSearch, state:UIControlStateNormal)
    if searchBarIconSearch
      UISearchBar.appearance.setImage(
        searchBarIconSearch,
        forSearchBarIcon:UISearchBarIconSearch,
        state:UIControlStateNormal)
    end

    searchBarIconClear = theme.searchImageForIcon(UISearchBarIconClear, state:UIControlStateNormal)
    if searchBarIconClear
      UISearchBar.appearance.setImage(
        searchBarIconClear,
        forSearchBarIcon:UISearchBarIconClear,
        state:UIControlStateNormal)
    end

    searchBarIconClearHighlighted = theme.searchImageForIcon(UISearchBarIconClear, state:UIControlStateHighlighted)
    if searchBarIconClear
      UISearchBar.appearance.setImage(
        searchBarIconClearHighlighted,
        forSearchBarIcon:UISearchBarIconClear,
        state:UIControlStateHighlighted)
    end

    scopeButtonBackgroundNormal = theme.searchScopeButtonBackgroundForState(UIControlStateNormal)
    if scopeButtonBackgroundNormal
      UISearchBar.appearance.setScopeBarButtonBackgroundImage(
        scopeButtonBackgroundNormal,
        forState:UIControlStateNormal)
    end

    scopeButtonBackgroundSelected = theme.searchScopeButtonBackgroundForState(UIControlStateSelected)
    if scopeButtonBackgroundSelected
      UISearchBar.appearance.setScopeBarButtonBackgroundImage(
        scopeButtonBackgroundSelected,
        forState:UIControlStateSelected)
    end

    if theme.searchScopeButtonDivider
      UISearchBar.appearance.setScopeBarButtonDividerImage(
        theme.searchScopeButtonDivider,
        forLeftSegmentState:UIControlStateNormal,
        rightSegmentState:UIControlStateNormal)
    end

    titleTextAttributesNav = {}
    titleSmallTextAttributesNav = {}

    if theme.navigationFont
      titleTextAttributesNav.setObject(theme.navigationFont, forKey:UITextAttributeFont)
    end
    if theme.navigationSmallFont
      titleSmallTextAttributesNav.setObject(theme.navigationSmallFont, forKey:UITextAttributeFont)
    end
    if theme.navigationTextColor
      titleTextAttributesNav.setObject(theme.navigationTextColor, forKey:UITextAttributeTextColor)
      titleSmallTextAttributesNav.setObject(theme.navigationTextColor, forKey:UITextAttributeTextColor)
    end
    if theme.navigationTextShadowColor
      titleTextAttributesNav.setObject(theme.navigationTextShadowColor, forKey:UITextAttributeTextShadowColor)
      titleSmallTextAttributesNav.setObject(theme.navigationTextShadowColor, forKey:UITextAttributeTextShadowColor)
      if theme.shadowOffset
        titleTextAttributesNav.setObject(NSValue.valueWithCGSize(theme.shadowOffset), forKey:UITextAttributeTextShadowOffset)
        titleSmallTextAttributesNav.setObject(NSValue.valueWithCGSize(theme.shadowOffset), forKey:UITextAttributeTextShadowOffset)
      end
    end

    UINavigationBar.appearance.setTitleTextAttributes(titleTextAttributesNav)
    UIBarButtonItem.appearance.setTitleTextAttributes(titleSmallTextAttributesNav, forState:UIControlStateNormal)
    UISearchBar.appearance.setScopeBarButtonTitleTextAttributes(titleTextAttributesNav, forState:UIControlStateNormal)

    titleTextAttributes = {}
    mainColor = theme.mainColor
    if mainColor
      titleTextAttributes.setObject(mainColor, forKey:UITextAttributeTextColor)
    end

    if theme.shadowColor
      titleTextAttributes.setObject(theme.shadowColor, forKey:UITextAttributeTextShadowColor)
      if theme.shadowOffset
        titleTextAttributes.setObject(NSValue.valueWithCGSize(theme.shadowOffset), forKey:UITextAttributeTextShadowOffset)
      end
    end
    UISegmentedControl.appearance.setTitleTextAttributes(titleTextAttributes, forState:UIControlStateNormal)

    titleTextAttributesH = {}
    if theme.highlightShadowColor
      titleTextAttributesH.setObject(theme.highlightShadowColor, forKey:UITextAttributeTextShadowColor)
      if theme.shadowOffset
        titleTextAttributesH.setObject(NSValue.valueWithCGSize(theme.shadowOffset), forKey:UITextAttributeTextShadowOffset)
      end
    end

    if theme.highlightColor
      titleTextAttributesH.setObject(theme.highlightColor, forKey:UITextAttributeTextColor)
    end

    UIBarButtonItem.appearance.setTitleTextAttributes(titleTextAttributesH, forState:UIControlStateHighlighted)
    UISegmentedControl.appearance.setTitleTextAttributes(titleTextAttributesH, forState:UIControlStateHighlighted)
    UISearchBar.appearance.setScopeBarButtonTitleTextAttributes(titleTextAttributesH, forState:UIControlStateHighlighted)

    if theme.cellBackgroundColor
      cellBackgroundView = FUICellBackgroundView.new
      cellBackgroundView.backgroundColor = theme.cellBackgroundColor
      cellBackgroundView.setCornerRadius(theme.cellCornerRadius) if theme.cellCornerRadius
      cellBackgroundView.setSeparatorHeight(theme.cellSeparatorHeight) if theme.cellSeparatorHeight
      UITableViewCell.appearance.setBackgroundView(cellBackgroundView)
    end

    if theme.cellSelectedBackgroundColor
      selectedCellBackgroundView = FUICellBackgroundView.new
      selectedCellBackgroundView.backgroundColor = theme.cellSelectedBackgroundColor
      selectedCellBackgroundView.setCornerRadius(theme.cellCornerRadius) if theme.cellCornerRadius
      selectedCellBackgroundView.setSeparatorHeight(theme.cellSeparatorHeight) if theme.cellSeparatorHeight
      UITableViewCell.appearance.setSelectedBackgroundView(selectedCellBackgroundView)
    end

    if theme.defaultFont
      UITableViewCell.appearance.setFont(theme.defaultFont)
      UITextField.appearance.setFont(theme.defaultFont)
      UILabel.appearance.setFont(theme.defaultFont)
    end

    if theme.cellTextColor
      UITextField.appearance.setTextColor(theme.cellTextColor)
      UITableViewCell.appearance.setBackgroundColor(UIColor.clearColor)
    end

    if theme.baseTintColor
      UINavigationBar.appearance.setTintColor(theme.baseTintColor)
      UIBarButtonItem.appearance.setTintColor(theme.baseTintColor)
      UISegmentedControl.appearance.setTintColor(theme.baseTintColor)
      UITabBar.appearance.setTintColor(theme.baseTintColor)
      UIToolbar.appearance.setTintColor(theme.baseTintColor)
      UISearchBar.appearance.setTintColor(theme.baseTintColor)
      UISlider.appearance.setThumbTintColor(theme.baseTintColor)
      UISlider.appearance.setMinimumTrackTintColor(theme.baseTintColor)
      UIProgress.appearance.setProgressTintColor(theme.baseTintColor)
    end
  end

  def self.customizeView(view)
    theme = UIApplication.sharedApplication.delegate.sharedTheme

    if theme.viewBackground
      view.setBackgroundColor(UIColor.colorWithPatternImage(theme.viewBackground))
    elsif theme.backgroundColor
      view.setBackgroundColor(theme.backgroundColor)
    end

    if theme.defaultFont
      UILabel.appearance.setFont(theme.defaultFont)
    end
  end

  def self.customizeTableView(tableView)
    theme = UIApplication.sharedApplication.delegate.sharedTheme

    if theme.tableBackground
      background = UIImageView.alloc.initWithImage(theme.tableBackground)
      tableView.setBackgroundView(background)
    elsif theme.backgroundColor
      tableView.setBackgroundView(nil)
      tableView.setBackgroundColor(theme.backgroundColor)
    end

    if theme.cellSeparatorColor
      tableView.setSeparatorColor(theme.cellSeparatorColor)
    end
  end

end