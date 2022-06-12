function _tide_item_free
    _tide_print_item free (free -h --giga | awk 'NR == 2 {print $7}')
end
