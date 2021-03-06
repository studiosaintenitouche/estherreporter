/*
 * filter.js
 * 2.1.0 (2018-02-18)
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 * Copyright 2011-2018 Jiren Patel[jirenpatel@gmail.com]
 *
 * Dependency:
 *  jQuery(v1.9 >=)
 */
/*
 * JsonQuery
 * 0.0.2 (2015-08-06)
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 * Copyright 2011-2015 Jiren Patel[jirenpatel@gmail.com]
 *
 */
! function (t) {
    "use strict";
    var e = function (t, e) {
        return new n(t, e || {})
    };
    t.JsonQuery = e, e.VERSION = "0.0.2", e.Config = {
        id: "id",
        latitude: "latitude",
        longitude: "longitude",
        date_regx: /^\d{4}-\d{2}-\d{2}$/
    }, e.blankClone = function (t, e) {
        return new n(e, {
            getterFns: t.getterFns,
            schema: t.schema,
            id: t.id,
            latitude: t.latitude,
            longitude: t.longitude
        })
    };
    var i = e.Config,
        r = function (t, e, i) {
            if (t.length === +t.length)
                for (var r = 0, n = t.length; r < n; r++) e.call(i, t[r], r);
            else
                for (var s in t) hasOwnProperty.call(t, s) && e.call(i, t[s], s)
        },
        n = function (t, e) {
            this.records = t || [], this.getterFns = e.getterFns || {}, this.lat = e.latitude || i.latitude, this.lng = e.longitude || i.longitude, this.id = e.id, e.schema && (this.schema = e.schema), this.records.length && !this.schema && a(this, t[0], e.schema)
        },
        s = n.prototype,
        a = function (t, e, r) {
            t.schema = {}, t.id || (t.id = e._id ? "_id" : i.id), r || (c.call(t, e), o.call(t, e))
        },
        h = function (t) {
            if (null == t) return "String";
            /*
             * @info Fix for IE 10 & 11
             * @bug Invalid calling object
             */
            var e = Object.prototype.toString.call(t).slice(8, -1);
            return "String" == e && t.match(i.date_regx) ? "Date" : e
        },
        c = function (t, e) {
            var i, r, n, s;
            for (i in t) s = t[i], r = h(s), n = e ? e + "." + i : i, this.schema[n] = r, "Object" == r ? c.call(this, s, n) : "Array" == r && (["Object", "Array"].indexOf(h(s[0])) > -1 ? c.call(this, t[i][0], n) : this.schema[n] = h(s[0]))
        },
        o = function (t) {
            var e, i, r;
            for (e in this.schema) {
                i = this.schema[e];
                try {
                    this.getterFns[e] || (this.getterFns[e] = l.call(this, e, i)),
                        //Remap if it is array
                        r = this.getterFns[e](t), "Array" == h(r) && (this.schema[e] = "Array")
                } catch (t) {
                    console.log("Error while generating getter function for selector : " + e + " NOTE: Define manually")
                }
            }
        },
        l = function (t, e) {
            for (var i, r, n, s = "", a = t.split("."), h = function (t, e) {
                    for (var i = 0, r = 0, n = e.length - 1, s = e.length - 1; s >= 0; s--) "Array" == t[e.slice(0, s + 1).join(".")] && s < n && (i = s, r += 1);
                    return r > 1 ? i + 1 : -1
                }(this.schema, a), c = a.length - 1; c >= 0; c--) i = a.slice(0, c + 1).join("."), r = "['" + a[c] + "']", s = "Array" == this.schema[i] ? h == c ? r + (s.length ? ".every(function(r" + c + "){  objs.push(r" + c + s + ")})" : "") : r + (s.length ? ".map(function(r" + c + "){  return r" + c + s + "})" : "") : r + s;
            return n = h > -1 ? "var objs = []; obj" + s + ";" + ("Date" == this.schema.path ? "return parseDate(objs)" : "return objs;") : "return " + ("Date" == this.schema.path ? "parseDate(obj" + s + ");" : "obj" + s + ";"), new Function("obj", n)
        };
    s.operators = {
        eq: function (t, e) {
            return t == e
        },
        ne: function (t, e) {
            return t != e
        },
        lt: function (t, e) {
            return t < e
        },
        lte: function (t, e) {
            return t <= e
        },
        gt: function (t, e) {
            return t > e
        },
        gte: function (t, e) {
            return t >= e
        },
        in: function (t, e) {
            return e.indexOf(t) > -1
        },
        ni: function (t, e) {
            return -1 == e.indexOf(t)
        },
        li: function (t, e) {
            return e.test(t)
        },
        bt: function (t, e) {
            return t >= e[0] && t <= e[1]
        }
    }, s.addOperator = function (t, e) {
        this.operators[t] = e
    };
    // rVal = Record Value
    // cVal = Condition Value
    var u = function (t, e, i) {
        for (var r = 0, n = t.length; r < n; r++)
            if (i(t[r], e)) return !0
    };
    s.addCondition = function (t, e) {
        this.operators[t] = e
    }, s.getCriteria = function (t) {
        var e = t.split(".$");
        return {
            field: e[0],
            operator: e[1] || "eq"
        }
    }, s.setGetterFn = function (t, e) {
        this.getterFns[t] = e
    }, s.addRecords = function (t) {
        return !(!t || !t.length) && ("Array" == h(t) ? this.records = this.records.concat(t) : this.records.push(t), this.schema || a(this, t[0]), !0)
    }, s._findAll = function (t, e, i, n) {
        var s, a, h, c = [],
            o = this.getterFns[e];
        return "li" == n && "string" == typeof i && (i = new RegExp(i)), s = this.operators[n], "Array" == this.schema[e] && (h = s, s = u), r(t, function (t) {
            a = o(t), s(a, i, h) && c.push(t)
        }), c
    }, s.find = function (t, e) {
        var i, r;
        return e || (e = t, t = this.id), r = this.getterFns[t],
            function (t, e, i) {
                for (var r = 0, n = t.length; r < n; r++)
                    if (!1 === e.call(i, t[r], r)) return
            }(this.records, function (t) {
                if (r(t) == e) return i = t, !1
            }), i
    }, r(["where", "or", "groupBy", "select", "pluck", "limit", "offset", "order", "uniq", "near"], function (t) {
        s[t] = function (e) {
            var i = new d(this, this.records);
            return i[t].apply(i, arguments), i
        }
    }), r(["update_all", "destroy_all"], function (t) {
        s[t] = function (e) {
            var i = new d(this, this.records);
            return i[t].apply(i, arguments)
        }
    }), r(["count", "first", "last", "all"], function (t) {
        Object.defineProperty(s, t, {
            get: function () {
                return new d(this, this.records)[t]
            }
        })
    });
    var f = function (t, e, i) {
            for (var r = 0, n = i.length; r < n; r++)
                if (this.getterFns[i[r]](t) !== this.getterFns[i[r]](e)) return !1;
            return !0
        },
        p = function (t, e) {
            var i, r, n;
            for (i in t) r = this.jQ.getCriteria(i), n = this.jQ._findAll(n || e, r.field, t[i], r.operator);
            return n
        },
        g = function (t, e) {
            var i = [],
                n = this;
            return "Object" != h(e[0]) ? (r(e, function (t) {
                -1 == i.indexOf(t) && i.push(t)
            }), i) : (i.push(e[0]), r(e, function (e) {
                for (var r = !1, s = 0, a = i.length; s < a; s++) f.call(n.jQ, i[s], e, t) && (r = !0);
                r || i.push(e)
            }), i)
        },
        d = function (t, e) {
            return this.jQ = t, this.records = e, this.criteria = {}, this
        },
        v = d.prototype;
    v.each = function (t, e) {
        r(this.exec() || [], t, e)
    }, v.exec = v.toArray = function (t) {
        var e;
        return this.criteria.all && (e = this.records), this.criteria.where && (e = p.call(this, this.criteria.where, e || this.records)), this.criteria.or && (e = e.concat(p.call(this, this.criteria.or, this.records)), e = g.call(this, [this.jQ.id], e)), this.criteria.order && (e = function (t, e) {
            for (var i, r, n = e.slice(0), s = 0, a = t.length; s < a; s++) i = this.jQ.getterFns[t[s].field], r = "asc" == t[s].direction ? 1 : -1, n.sort(function (t, e) {
                var n = i(t),
                    s = i(e);
                return (n < s ? -1 : n > s ? 1 : 0) * r
            });
            return n
        }.call(this, this.criteria.order, e || this.records)), this.criteria.near && (e = b.call(this, this.criteria.near, e || this.records)), this.criteria.uniq && (e = g.call(this, this.criteria.uniq, e || this.records)), this.criteria.select && (e = function (t, e) {
            var i, n = this,
                s = [];
            return r(t, function (t) {
                i = n.jQ.getterFns[t], r(e, function (e, r) {
                    (s[r] || (s[r] = {}))[t] = i(e)
                })
            }), s
        }.call(this, this.criteria.select, e || this.records)), this.criteria.pluck && (e = function (t, e) {
            var i = this.jQ.getterFns[t],
                n = [];
            return r(e, function (t) {
                n.push(i(t))
            }), n
        }.call(this, this.criteria.pluck, e || this.records)), this.criteria.limit && (e = (e || this.records).slice(this.criteria.offset || 0, (this.criteria.offset || 0) + this.criteria.limit)), this.criteria.group_by && (e = function (t, e) {
            var i, n = this.jQ.getterFns[t],
                s = {};
            e.length;
            return r(e, function (t) {
                i = n(t), (s[i] || (s[i] = [])).push(t)
            }), s
        }.call(this, this.criteria.group_by, e || this.records)), e || (e = this.records), t && r(e, t), this.jQ.onResult && this.jQ.onResult(e, this.criteria), e
    };
    var m = function (t, e) {
        var i;
        for (i in this.criteria[t] || (this.criteria[t] = {}), e) this.criteria[t][i] = e[i];
        return this
    };
    v.where = function (t) {
        return m.call(this, "where", t)
    }, v.or = function (t) {
        return m.call(this, "or", t)
    }, v.groupBy = function (t) {
        return this.criteria.group_by = t, this
    }, v.select = function () {
        return this.criteria.select = arguments, this
    }, v.pluck = function (t) {
        return this.criteria.pluck = t, this
    }, v.limit = function (t) {
        return this.criteria.limit = t, this
    }, v.offset = function (t) {
        return this.criteria.offset = t, this
    }, v.order = function (t) {
        var e;
        for (e in this.criteria.order = this.criteria.order || [], t) this.criteria.order.push({
            field: e,
            direction: t[e].toLowerCase()
        });
        return this
    }, v.uniq = function () {
        return this.criteria.uniq = !(arguments.length > 0) || arguments, this
    }, Object.defineProperty(v, "count", {
        get: function () {
            this.criteria.count = !0;
            var t = this.exec();
            return "Array" == h(t) ? this.exec().length : Object.keys(t).length
        }
    }), Object.defineProperty(v, "all", {
        get: function () {
            return this.criteria.all = !0, this.exec()
        }
    }), Object.defineProperty(v, "first", {
        get: function () {
            return this.criteria.first = !0, this.exec()[0]
        }
    }), Object.defineProperty(v, "last", {
        get: function () {
            this.criteria.last = !0;
            var t = this.exec();
            return t[t.length - 1]
        }
    });
    //Geocoding
    var _ = 6371,
        P = function (t) {
            return t * Math.PI / 180
        },
        b = function (t, e) {
            var i = [],
                n = "mile" == t.unit ? .6214 : 1,
                s = this.jQ.getterFns[this.jQ.lat],
                a = this.jQ.getterFns[this.jQ.lng];
            return r(e, function (e) {
                var r, h, c, o, l, u, f;
                e._distance = (r = s(e), h = t.lat, c = a(e), o = t.lng, l = P(h - r), u = P(o - c), r = P(r), h = P(h), f = Math.sin(l / 2) * Math.sin(l / 2) + Math.sin(u / 2) * Math.sin(u / 2) * Math.cos(r) * Math.cos(h), 2 * Math.atan2(Math.sqrt(f), Math.sqrt(1 - f)) * _ * n), e._distance <= t.distance && i.push(e)
            }), i.sort(function (t, e) {
                return t._distance < e._distance ? -1 : t._distance > e._distance ? 1 : 0
            }), i
        };
    v.near = function (t, e, i, r) {
            return this.criteria.near = {
                lat: t,
                lng: e,
                distance: i,
                unit: r || "km"
            }, this
        },
        //Helpers
        v.map = v.collect = function (t) {
            var e, i = [];
            return this.exec(function (r) {
                (e = t(r)) && i.push(e)
            }), i
        }, v.sum = function (t) {
            var e, i = 0,
                n = this.jQ.getterFns[t];
            return this.criteria.group_by && (e = !0, i = {}), this.exec(function (t, s) {
                e ? (i[s] = 0, r(t, function (t) {
                    i[s] = i[s] + (n(t) || 0)
                })) : i += n(t) || 0
            }), i
        }, v.toJQ = function () {
            var t = e(this.all, {
                schema: !0
            });
            return t.schema = this.jQ.schema, t.getterFns = this.jQ.getterFns, t
        }, v.destroy_all = v.destroy = function () {
            var t = this.all;
            return r(t, function (t, e) {
                t._destroy_ = !0
            }), this.records = this.jQ.records = this.records.filter(function (t) {
                return !t._destroy_
            }), t
        }, v.update_all = v.update = function (t) {
            if (!t) return !1;
            var e = 0;
            return r(this.all, function (i) {
                r(t, function (t, e) {
                    i[e] = t
                }), e += 1
            }), e
        },
        //In IE 8 indexOf method not define.
        Array.prototype.indexOf || (Array.prototype.indexOf = function (t, e) {
            for (var i = e || 0, r = this.length; i < r; i++)
                if (this[i] === t) return i;
            return -1
        }), Object.defineProperty || (Object.defineProperty = function (t, e, i) {
            t[e] = i.get
        })
}(this),
function (t, e, i) {
    "use strict";
    //View Template
    // Ref: Underscopre.js
    //JavaScript micro-templating, similar to John Resig's implementation.
    var r = {
        evaluate: /<%([\s\S]+?)%>/g,
        interpolate: /<%=([\s\S]+?)%>/g,
        escape: /<%-([\s\S]+?)%>/g
    };

    function n(t, e) {
        var i = r,
            n = "var __p=[],print=function(){__p.push.apply(__p,arguments);};with(obj||{}){__p.push('" + t.replace(/\\/g, "\\\\").replace(/'/g, "\\'").replace(i.escape, function (t, e) {
                return "',escapeStr(" + e.replace(/\\'/g, "'") + "),'"
            }).replace(i.interpolate, function (t, e) {
                return "'," + e.replace(/\\'/g, "'") + ",'"
            }).replace(i.evaluate || null, function (t, e) {
                return "');" + e.replace(/\\'/g, "'").replace(/[\r\n\t]/g, " ") + ";__p.push('"
            }).replace(/\r/g, "\\r").replace(/\n/g, "\\n").replace(/\t/g, "\\t") + "');}return __p.join('');",
            s = new Function("obj", n);
        return e ? s(e) : function (t) {
            return s(t)
        }
    }
    var s = function (e, i, r) {
            var n = this;
            this.opts = r || {}, this.callbacks = this.opts.callbacks || {}, this.$container = t(i), this.view = this.opts.view || h, this.criterias = [], this._index = 1, this.appendToContainer = this.opts.appendToContainer || c, this.has_pagination = !!this.opts.pagination, this.search_text = "", this.anyFilterSelected = !1, this.setTemplate(this.opts.template), t.each(this.opts.criterias || [], function () {
                n.addCriteria(this)
            }), this.Model = JsonQuery(), this.Model.getterFns._fid = function (t) {
                return t._fid
            }, this.addRecords(e, this.opts.filter_on_init || !1), this.has_pagination && this.initPagination()
        },
        a = s.prototype;
    Object.defineProperty(a, "records", {
            get: function () {
                return this.Model.records
            }
        }), Object.defineProperty(a, "recordsCount", {
            get: function () {
                return this.Model.records.length
            }
        }), a.templateBuilder = n,
        //Callback
        a.execCallback = function () {
            var t = arguments[0];
            this.callbacks[t] && this.callbacks[t].apply(this, Array.prototype.slice.call(arguments, 1))
        }, a.addCallback = function (t, e) {
            t && e && (this.callbacks[t] = e)
        },
        //Add Data
        a.addRecords = function (t, e) {
            this.Model.schema;
            this.execCallback("beforeAddRecords", t), this.Model.addRecords(t) && (this.has_scheme || this.initSearch(this.opts.search), this.render(t), !1 !== e && this.filter()), this.execCallback("afterAddRecords", t)
        }, a.removeRecords = function (e) {
            var i;
            if (t.isPlainObject(e) ? i = this.Model.where(e).pluck("_fid").all : t.isArray(e) && (i = this.Model.where({
                    "id.$in": e
                }).pluck("_fid").all), !i) return !1;
            for (var r, n = this.Model.records, s = 0, a = i.length, h = n.length - 1; h > -1 && (r = n[h]._fid, i.indexOf(r) > -1 && (n.splice(h, 1), s++, t("#fjs_" + r).remove()), s != a); h--);
            return this.execCallback("afterRemove"), !0
        };
    var h = function (t, e) {
        return this.templateFn(t)
    };
    a.render = function (e) {
        var i = this;
        e.length && (this.execCallback("beforeRender", e), "beforeRecordRender", t.each(e, function (t) {
            i.execCallback("beforeRecordRender", this), this._fid = i._index++, i.has_pagination || i.renderItem(this, t)
        }))
    }, a.renderItem = function (e, i) {
        if (e) {
            var r = this.view(e, i);
            "string" == typeof r && (r = t(t.trim(r))), r.attr("id", "fjs_" + e._fid).addClass("fjs_item"), this.appendToContainer(r, e)
        }
    };
    var c = function (t, e) {
        this.$container.append(t)
    };
    a.addCriteria = function (e) {
        var i = this;
        return !!e && (t.isArray(e) ? t.each(e, function () {
            o.call(i, this)
        }) : o.call(i, e), !0)
    };
    // Add Filter criteria
    // criteria: { ele: '#name', event: 'check', field: 'name', type: 'range' }
    var o = function (e) {
        return !!(e && e.field && e.ele) && (e.$ele = t(e.ele), !!e.$ele.length && (r = (i = e).$ele, n = i.$ele.attr("type"), i.selector || ("INPUT" == r.get(0).tagName ? i.selector = "checkbox" == n || "radio" == n ? ":checked" : ":input" : "SELECT" == r.get(0).tagName && (i.selector = "select")), i.event || (i.event = "checkbox" == n || "radio" == n ? "click" : "change"), e = i, this.bindEvent(e.ele, e.event), e._q = e.field + ("range" == e.type ? ".$bt" : ""), e.active = !0, this.criterias.push(e), !0));
        var i, r, n
    };
    a.removeCriteria = function (e) {
        var i, r;
        t.each(this.criterias, function (t) {
            this.field == e && (r = t)
        }), null != r && (i = this.criterias.splice(r, 1)[0], t("body").off(i.event, i.ele))
    };
    var l = function (e, i) {
        var r = this;
        e && (t.isArray(e) || (e = [e]), t.each(e, function () {
            var e = this;
            t.each(r.criterias, function () {
                this.field == e && (this.active = i)
            })
        }))
    };
    a.deactivateCriteria = function (t) {
            l.call(self, t, !1)
        }, a.activateCriteria = function (t) {
            l.call(this, t, !0)
        }, a.getSelectedValues = function (e, i) {
            var r = [];
            if (e.$ele.filter(e.selector).each(function () {
                    r.push(t(this).val())
                }), t.isArray(r[0]) && (r = [].concat.apply([], r)), !(e.all && r.indexOf(e.all) > -1)) return "range" == e.type && (r = r[0].split(e.delimiter || "-")), r = this.parseValues(e.field, r), i.execCallback("onFilterSelect", {
                criteria: e,
                values: r
            }) || r
        }, a.lastResult = function () {
            return this.last_result || this.records
        }, a.filter = function () {
            var e, i, r, n = {},
                s = 0,
                a = this;
            return t.each(this.criterias, function () {
                this.active && (e = a.getSelectedValues(this, a)) && e.length && (i = t.isArray(e) && !this.type ? this._q + ".$in" : this._q, n[i] = e, s += 1)
            }), this.anyFilterSelected = s > 0, r = this.Model.where(n), this.execCallback("shortResult", r), this.last_result = r.all, this.searchFilter(this.last_result) ? n : (this.show(this.last_result), this.renderPagination(this.last_result.length), this.execCallback("afterFilter", this.last_result, JsonQuery.blankClone(this.Model, this.last_result)), n)
        }, a.show = function (e, i) {
            var r = 0,
                n = e.length;
            if (this.has_pagination)
                for (n = (r = this.page.perPage * (this.page.currentPage - 1)) + this.page.perPage, this.$container.html(""); r < n; r++) this.renderItem(e[r], r);
            else
                for (t(".fjs_item").hide(); r < n; r++) t("#fjs_" + e[r]._fid).show()
        }, a.filterTimer = function (t) {
            var e = this;
            this.filterTimeoutId && clearTimeout(this.filterTimeoutId), this.filterTimeoutId = setTimeout(function () {
                e.filter()
            }, t)
        }, a.bindEvent = function (e, r) {
            var n = this;
            t(i).on(r, e, function (t) {
                n.filterTimer(n.opts.timeout || 35)
            })
        }, a.initSearch = function (e) {
            e && e.ele && (e.start_length || (this.opts.search.start_length = 2), this.$search_ele = t(this.opts.search.ele), this.$search_ele.length && (this.has_search = !0, this.searchFn = this.buildSearchFn(e.fields), this.bindEvent(e.ele, "keyup")))
        }, a.buildSearchFn = function (e) {
            var i = this,
                r = [];
            return e ? t.each(e, function () {
                    r.push(i.Model.getterFns[this])
                }) : t.each(i.Model.getterFns, function (t, e) {
                    r.push(e)
                }),
                function (t, e) {
                    t = t.toLocaleUpperCase();
                    for (var i = 0, n = r.length; i < n; i++)
                        if ((r[i](e) + "").toLocaleUpperCase().indexOf(t) > -1) return !0;
                    return !1
                }
        }, a.lastSearchResult = function () {
            return this.search_text.length > this.opts.search.start_length ? this.search_result : this.lastResult()
        }, a.searchFilter = function (e) {
            var i;
            if (this.has_search) return this.search_text = t.trim(this.$search_ele.val()), !(this.search_text.length < this.opts.search.start_length) && (i = this.search(this.search_text, e || this.lastResult()), this.search_result = i, this.show(i), this.renderPagination(i.length), this.execCallback("afterFilter", i, JsonQuery.blankClone(this.Model, i)), !0)
        }, a.search = function (t, e) {
            t = t.toLocaleUpperCase();
            for (var i = [], r = 0, n = e.length; r < n; r++) this.searchFn(t, e[r]) && i.push(e[r]);
            return i
        },
        //Streaming
        a.setStreaming = function (t) {
            t && (this.opts.streaming = t, t.data_url && (t.stream_after = 1e3 * (t.stream_after || 2), t.batch_size = t.batch_size || !1, this.streamData(t.stream_after)))
        };
    a.setStreamInterval = function () {
        var e = this;
        1 != e.opts.streaming.stop && (e.streamingTimer = setTimeout(function () {
            (function () {
                var e = this,
                    i = this.opts.params || {},
                    r = this.opts.streaming;
                i.offset = this.recordsCount, r.batch_size && (i.limit = r.batch_size), this.has_search && (i.q = t.trim(this.$search_ele.val())), t.getJSON(r.data_url, i).done(function (t) {
                    null == i.limit || t && t.length ? (e.setStreamInterval(), e.addRecords(t)) : e.stopStreaming()
                }).fail(function (t) {
                    e.stopStreaming()
                })
            }).call(e)
        }, e.opts.streaming.stream_after))
    }, a.stopStreaming = function () {
        this.opts.streaming.stop = !0, this.streamingTimer && clearTimeout(this.streamingTimer)
    }, a.resumeStreaming = function () {
        this.opts.streaming.stop = !1, this.streamData(this.opts.streaming.stream_after)
    }, a.streamData = function (t) {
        this.setStreamInterval(), this.opts.streaming.batch_size || this.stopStreaming()
    }, a.clear = function () {
        this.opts.streaming && this.stopStreaming(), t.each(this.criterias, function () {
            t(i).off(this.event, this.ele)
        }), this.opts.search && t(i).off("keyup", this.opts.search.ele), this.filterTimeoutId && clearTimeout(this.filterTimeoutId)
    }, a.initPagination = function () {
        var t = this,
            e = this.opts.pagination;
        e.perPage || (e.perPage = {}), e.perPage.values || (e.perPage.values = [10, 20, 30]), this.page = {
            currentPage: 1,
            perPage: e.perPage.values
        }, this.paginator = new u(this.lastResult().length, this.opts.pagination, function (e, i) {
            t.page = {
                currentPage: e,
                perPage: i
            }, t.has_search ? t.show(t.lastSearchResult()) : t.show(t.lastResult())
        }), this.filter()
    }, a.renderPagination = function (t) {
        this.has_pagination && this.paginator.setRecordCount(t)
    }, a.parseValues = function (e, i) {
        var r = void 0 === this.Model.schema ? "String" : this.Model.schema[e];
        return "Number" == r ? t.map(i, function (t) {
            return Number(t)
        }) : "Boolean" == r ? t.map(i, function (t) {
            return "true" == t || 1 == t
        }) : i
    }, a.setTemplate = function (e, i) {
        this.templateFn = n(t(e).html()), !0 === i && (this.$container.empty(), this.render(this.records), this.filter())
    };
    var u = function (e, i, r) {
            var s;
            this.recordsCount = e, this.opts = i, this.$container = t(this.opts.container), s = this.opts.paginationView ? t(this.opts.paginationView).html() : d.pagination, this.paginationTmpl = n(s), this.currentPage = 1, this.onPagination = r, this.initPerPage(), this.render(), this.bindEvents()
        },
        f = u.prototype;

    function p(t, e) {
        for (var i = t, r = []; i <= e; i++) r.push(i);
        return r
    }
    f.bindEvents = function () {
        var e = this;
        t(this.opts.container).on("click", "[data-page]", function (i) {
            e.setCurrentPage(t(this).data("page")), i.preventDefault()
        })
    }, f.totalPages = function () {
        return Math.ceil(this.recordsCount / this.perPageCount)
    }, f.setCurrentPage = function (t) {
        t = this.toPage(t), this.prevCurrentPage = this.currentPage, this.currentPage = t, this.paginate(t)
    }, f.setRecordCount = function (t) {
        this.recordsCount = t, this.setCurrentPage(this.currentPage)
    }, f.toPage = function (t) {
        if ("first" == t) return 1;
        if ("last" == t) return this.totalPages();
        if ("next" == t) {
            var e = this.currentPage + 1;
            return e > this.totalPages() ? this.currentPage : e
        }
        if ("prev" == t) {
            var i = this.currentPage - 1;
            return i <= 0 ? this.currentPage : i
        }
        return parseInt(t)
    }, f.paginate = function (t) {
        this.render(), this.onPagination(this.currentPage, this.perPageCount)
    }, f.render = function () {
        var t = this.getPages();
        this.currentPage > t.totalPages && (this.currentPage = t.totalPages), 0 == this.currentPage && (this.currentPage = 1), t.currentPage = this.currentPage, this.$container.html(this.paginationTmpl(t))
    }, f.getPages = function () {
        var t = this.totalPages();
        if (!this.opts.visiblePages) return {
            totalPages: t,
            pages: p(0, t),
            self: this
        };
        var e = Math.floor(this.opts.visiblePages / 2),
            i = this.currentPage - e + 1 - this.opts.visiblePages % 2,
            r = this.currentPage + e;
        // handle boundary case
        return i <= 0 && (i = 1, r = this.opts.visiblePages), r > t && ((i = t - this.opts.visiblePages) <= 0 && (i = 1), r = t), {
            currentPage: this.currentPage,
            totalPages: t,
            pages: p(i, r),
            self: this
        }
    }, f.initPerPage = function () {
        var e, i, r = this.opts.perPage,
            s = this;
        this.perPageCount = r.values[0], e = n(r.perPageView ? t(r.perPageView).html() : d.per_page)({
            values: r.values
        }), t(r.container).html(e), i = "SELECT" == t(r.container).find("[data-perpage]").get(0).tagName ? "change" : "click", t(r.container).on(i, "[data-perpage]", function (e) {
            var i = parseInt(t(this).val() || t(this).data("value"));
            s.setPerPage(i), e.preventDefault()
        })
    }, f.setPerPage = function (t) {
        this.perPageCount = t, this.setCurrentPage(this.currentPage)
    }, t.fn.filterjs = function (e, i) {
        var r = t(this);
        r.data("fjs") || r.data("fjs", v(e, r, i))
    };
    var g = [],
        d = [],
        v = function (t, e, i) {
            var r = new s(t, e, i);
            return g.push(r), r
        };
    /*
     * Find html tag and parse options for filter
     */
    function m(e, i) {
        var r = "fjs-" + e,
            n = t("[" + r + "]"),
            s = [];
        if (n.length) return t.each(n, function () {
            var e = t(this),
                i = {
                    ele: e
                },
                n = e.attr(r);
            if (s.push(i), !n) return s;
            t.each(n.split(","), function (t, e) {
                var r = e.split("=");
                i[r[0]] = r[1]
            })
        }), i ? s : s[0]
    }
    v.list = g, v.templateBuilder = n, e.FilterJS = v, d.pagination = '<nav>  <ul class="pagination">    <% if(currentPage > 1) { %>      <li> <a href="#" data-page="first" aria-label="First"><span aria-hidden="true">First</span></a> </li>      <li><a href="#" data-page="prev" aria-label="Previous"><span aria-hidden="true">&larr; Previous</span></a></li>    <% } %>    <% for(var i = 0, l = pages.length; i < l; i++ ){ %>      <li class="<%= pages[i] == currentPage ? \'active\' : \'\' %>">        <a href="#" data-page="<%= pages[i] %>"><%= pages[i] %></a>      </li>    <% } %>    <% if( currentPage < totalPages ) { %>      <li><a href="#" data-page="next" aria-label="Next"><span aria-hidden="true">Next &rarr;</span></a></li>      <li><a href="#" data-page="last" aria-label="Last"><span aria-hidden="true">Last</span></a></li>    <% } %>  </ul></nav>', d.per_page = '<select size="1" name="per_page" data-perpage="true" class="per-page">  <% for(var i = 0; i < values.length; i++ ){ %>    <option value="<%= values[i] %>"><%= values[i] %></option>  <% } %></select>', v.auto = function (t, e) {
        var i, r, n, s = {},
            a = m("items");
        if (a && a.template) return s.template = a.template, (r = m("search")) && (r.fields && (r.fields = r.fields.split(",")), s.search = r), e && (s.callbacks = e), i = v(t, a.ele, s), (n = m("criteria", !0)) && i.addCriteria(n), i
    }
}(jQuery, window, document);