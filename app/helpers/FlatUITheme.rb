class FlatUITheme < DefaultTheme

  def defaultFont
    return UIFont.boldFlatFontOfSize(16)
  end

  def defaultBoldFont
    return UIFont.boldFlatFontOfSize(16)
  end

  def defaultSmallFont
    return UIFont.boldFlatFontOfSize(13)
  end

  def navigationFont
    return UIFont.boldFlatFontOfSize(18)
  end

  def navigationSmallFont
    return UIFont.boldFlatFontOfSize(12)
  end

  def navTextColor
    return UIColor.cloudsColor
  end

  def navigationBackgroundForBarMetrics(barMetrics)
    return imageWithColor(UIColor.midnightBlueColor)
  end

  def navigationBackgroundForBarMetricsLandscape(barMetrics)
    return imageWithColor(UIColor.midnightBlueColor)
  end

  def flatButtonColor
    return UIColor.peterRiverColor
  end

  def flatHighlightedButtonColor
    return UIColor.belizeHoleColor
  end

  def buttonCornerRadius
    return 2
  end

  def backgroundColor
    return UIColor.silverColor
  end

  def cellBackgroundColor
    return UIColor.whiteColor
  end

  def cellSelectedBackgroundColor
    return UIColor.greenSeaColor
  end

  def cellSeparatorColor
    return UIColor.cloudsColor
  end

  def cellTextColor
    return UIColor.greenSeaColor
  end

  def cellDetailTextColor
    return UIColor.asbestosColor
  end

  def cellSeparatorHeight
    return 1
  end

  def cellCornerRadius
    return 2
  end
end