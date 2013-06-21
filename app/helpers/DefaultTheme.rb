class DefaultTheme
  def imageWithColor(color)
    rect = CGRectMake(0.0, 0.0, 1.0, 1.0)
    UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
    color.setFill
    UIRectFill(rect)

    image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    return image
  end

  def statusBarStyle
    return nil
  end

  def mainColor
    return nil
  end

  def secondColor
    return nil
  end

  def navigationTextColor
    return nil
  end

  def navigationTextShadowColor
    return nil
  end

  def highlightColor
    return nil
  end

  def highlightShadowColor
    return nil
  end

  def defaultFont
    return nil
  end

  def shadowColor
    return nil
  end

  def defaultBoldFont
    return nil
  end

  def defaultBiggestFont
    return nil
  end

  def defaultBiggerFont
    return nil
  end

  def defaultSmallFont
    return nil
  end

  def defaultSmallerFont
    return nil
  end

  def defaultSmallestFont
    return nil
  end

  def navigationFont
    return nil
  end

  def navigationSmallFont
    return nil
  end

  def backgroundColor
    return nil
  end

  def separatorColor
    return nil
  end

  def baseTintColor
    return nil
  end

  def accentTintColor
    return nil
  end

  def selectedTabbarItemTintColor
    return nil
  end

  def switchThumbColor
    return nil
  end

  def switchOnColor
    return nil
  end

  def switchTintColor
    return nil
  end

  def shadowOffset
    return nil
  end

  def topShadow
    return nil
  end

  def bottomShadow
    return nil
  end

  def navigationBackgroundForBarMetrics(barMetrics)
    return nil
  end

  def barButtonBackgroundForState(state, style:style, barMetrics:barMetrics)
    return nil
  end

  def toolbarBackgroundForBarMetrics(barMetrics)
    return nil
  end

  def searchBackground
    return nil
  end

  def backBackgroundForState(state, barMetrics:barMetrics)
    return nil
  end

  def searchFieldImage
    return nil
  end

  def searchScopeButtonBackgroundForState(state)
    return nil
  end

  def searchScopeButtonDivider
    return nil
  end

  def searchImageForIcon(icon, state:state)
    return nil
  end

  def segmentedBackgroundForState(state, barMetrics:barMetrics)
    return nil
  end

  def segmentedDividerForBarMetrics(barMetrics)
    return nil
  end

  def tableBackground
    nil
  end

  def tableSectionHeaderBackground
    return nil
  end

  def tableFooterBackground
    return nil
  end

  def cellBackgroundColor
    return nil
  end

  def cellSelectedBackgroundColor
    return nil
  end

  def cellSeparatorColor
    return nil
  end

  def cellTextColor
    return nil
  end

  def cellDetailTextColor
    return nil
  end

  def cellSeparatorHeight
    return nil
  end

  def cellCornerRadius
    return nil
  end

  def viewBackground
    return nil
  end

  def buttonBackgroundForState(state)
    return nil
  end

  def colorButtonBackgroundForState(state)
    return nil
  end

  def tabBarBackground
    return nil
  end

  def tabBarSelectionIndicator
    return nil
  end

  def imageForTab(tab)
    return nil
  end
end