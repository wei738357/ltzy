(function ($, undefined) {

    $.fn.monthpicker = function (options) {

        var months = options.months || ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],

          Monthpicker = function (el) {
              this._el = $(el);
              this._init();
              this._render();
              this._renderYears();
              this._renderMonths();
              this._bind();
          };

        Monthpicker.prototype = {
            destroy: function () {
                this._el.off('click');
                this._yearsSelect.off('click');
                this._container.off('click');
                $(document).off('click', $.proxy(this._hide, this));
                this._container.remove();
            },

            _init: function () {

                //默认加载日期
                var date = new Date();
                var year = date.getFullYear();
                var Month = date.getMonth() + 1;

                var Monthstr = "";
                if (Month < 10) {
                    Monthstr = "0" + Month.toString();
                }
				else{
					Monthstr = Month.toString();
				}
                var datestr = year.toString() + "-" + Monthstr;
                //  $("#selectdate").val(datestr.toString());
                this._el.val(year.toString() + '-' + Monthstr);
                // this._el.val(options.years[0]+'-'+months[0]);
                this._el.data('monthpicker', this);
            },

            _bind: function () {
                this._el.on('click', $.proxy(this._show, this));
                $(document).on('click', $.proxy(this._hide, this));
                this._yearsSelect.on('click', function (e) { e.stopPropagation(); });
                this._container.on('click', 'button', $.proxy(this._selectMonth, this));
            },

            _show: function (e) {
                e.preventDefault();
                e.stopPropagation();
                this._container.css('display', 'inline-block');
            },

            _hide: function () {
                this._container.css('display', 'none');
            },

            _selectMonth: function (e) {
                var monthIndex = $(e.target).data('value'),
                  month = months[monthIndex],
                  year = this._yearsSelect.val();
                if (this._el.attr('type') == "text") {
                    this._el.val(year + '-' + month);
                } else {
                    this._el.val(year + '-' + month);
                }

                if (options.onMonthSelect) {
                    options.onMonthSelect(monthIndex, year);
                }
            },

            _render: function () {
                var linkPosition = this._el.position(),
                  cssOptions = {
                      display: 'none',
                      position: 'absolute',
                      top: linkPosition.top + this._el.height() + (options.topOffset || 0),
                      left: linkPosition.left
                  };
                this._id = (new Date).valueOf();
                this._container = $('<div class="monthpicker" id="monthpicker-' + this._id + '">')
                  .css(cssOptions)
                  .appendTo($('body'));
            },

            _renderYears: function () {
                var markup = $.map(options.years, function (year) {
                    return '<option>' + year + '</option>';
                });
                var yearsWrap = $('<div class="years">').appendTo(this._container);
                this._yearsSelect = $('<select>').html(markup.join('')).appendTo(yearsWrap);
            },

            _renderMonths: function () {
                var markup = ['<table>', '<tr>'];
                $.each(months, function (i, month) {
                    if (i > 0 && i % 4 === 0) {
                        markup.push('</tr>');
                        markup.push('<tr>');
                    }
                    markup.push('<td><button data-value="' + i + '">' + month + '</button></td>');
                });
                markup.push('</tr>');
                markup.push('</table>');
                this._container.append(markup.join(''));
            }
        };

        var methods = {
            destroy: function () {
                var monthpicker = this.data('monthpicker');
                if (monthpicker) monthpicker.destroy();
                return this;
            }
        }

        if (methods[options]) {
            return methods[options].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof options === 'object' || !options) {
            return this.each(function () {
                return new Monthpicker(this);
            });
        } else {
            $.error('Method ' + options + ' does not exist on monthpicker');
        }

    };

}(jQuery));
