class FlatUITheme < DefaultTheme

  def defaultFont
    return UIFont.boldFlatFontOfSize(16)
  end

  def defaultBoldFont
    return UIFont.boldFlatFontOfSize(16)
  end

  def defaultBiggestFont
    return UIFont.boldFlatFontOfSize(28)
  end

  def defaultBiggerFont
    return UIFont.boldFlatFontOfSize(24)
  end

  def defaultSmallFont
    return UIFont.boldFlatFontOfSize(13)
  end

  def defaultSmallerFont
    return UIFont.boldFlatFontOfSize(10)
  end

  def defaultSmallestFont
    return UIFont.boldFlatFontOfSize(16)
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
    return 2
  end

  def cellCornerRadius
    return 2
  end
end