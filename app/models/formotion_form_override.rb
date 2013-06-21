module Formotion
  class Form < Formotion::Base

    def tableView(tableView, willDisplayCell:cell, forRowAtIndexPath:indexPath)

      theme = UIApplication.sharedApplication.delegate.sharedTheme
      if theme.cellBackgroundColor
        cellBackgroundView = FUICellBackgroundView.new
        cellBackgroundView.backgroundColor = theme.cellBackgroundColor
        cell.backgroundView = cellBackgroundView
        cell.backgroundView.setCornerRadius(theme.cellCornerRadius) if theme.cellCornerRadius
        cell.backgroundView.setSeparatorHeight(theme.cellSeparatorHeight) if theme.cellSeparatorHeight
      end

      cell.textLabel.textColor = UIColor.wetAsphaltColor
      cell.textLabel.backgroundColor = UIColor.clearColor
      cell.textLabel.highlightedTextColor = UIColor.cloudsColor
      if cell.respondsToSelector(:detailTextLabel)
        cell.detailTextLabel.textColor = UIColor.wetAsphaltColor
        cell.detailTextLabel.backgroundColor = UIColor.clearColor
        cell.detailTextLabel.highlightedTextColor = UIColor.cloudsColor
      end
    end
  end

end