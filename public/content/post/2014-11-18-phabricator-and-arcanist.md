+++
title = "phabricator and arcanist"
tags = ["phabricator", "arcanist", "codereview"]
date = "2014-11-18T15:17:22+08:00"

+++

**[phabricator](http://phabricator.org) an open source, software engineering platform**

> Phabricator is a collection of open source web applications that help software companies build better software.

### 主要功能介紹:

+ reviewing and auditing code;
+ hosting Git/Hg/SVN repositories;
+ browsing repositories;
+ tracking bugs or "features";
+ hiding stuff from coworkers;
+ and also some other things,like meme generators.

## 安裝

這邊主要討論的是arc的安裝，phabricator的安裝請訪問[官方安裝說明](https://secure.phabricator.com/book/phabricator/article/installation_guide/),同時建議大家可以參考[arc快速入門](https://secure.phabricator.com/book/phabricator/article/arcanist_quick_start/)

首先，安裝依賴:
+ 安裝[git](http://www.git-scm.com).
+ 安裝[PHP](http://php.net/downloads.php), 打開curl擴展.

安裝arcanist:

    $ mkdir install_dir/
    $ cd install_dir/
    install_dir/ $ git clone https://github.com/phacility/libphutil.git
    install_dir/ $ git clone https://github.com/phacility/arcanist.git

添加arc到系統PATH環境變量:

    //for linux and MAC OSX:
    $ export PATH="$PATH:/somewhere/arcanist/bin/"

配置默認編輯器:

    $ arc set-config editor "\"C:\path\to\some\editor.exe\""
    
    //Notepad++
    $ arc set-config editor "\"C:\Program Files (x86)\Notepad++\notepad++.exe\" -multiInst -nosession"

    //vim
    $ arc set-config editor "\"C:\Program Files (x86)\Git\share\vim\vim73\vim.exe\""

    //GitPad
    $ arc set-config editor "\"C:\Users\yourusername\AppData\Roaming\GitPad\GitPad.exe\""

    //Sublime Text
    $ arc set-config editor "\"C:\Program Files\Sublime Text 2\sublime_text.exe\" -w -n"
    
## 配置和簡單使用

> [官方参考文档](https://secure.phabricator.com/book/phabricator/article/arcanist_new_project/)

+ 登录[phabricator](http://pha)
+ 添加SSH public key
+ 为工程项目添加arc配置文件

安裝授權證書：

    $ arc install-certificate
    
**.arcconfig**

    {
        "phabricator.uri": "http://pha", //pha仓库地址
        "repository.callsign": "WEBMAIN", //项目唯一标识(全大写)
        "project.name": "WebClient",  //项目名称(可选)
        "unit.engine": "PHPUnitTestEngine", //测试引擎
        "phpunit_config": "phpunit.xml", //phpunit测试配置文件
        "load": [
            "libcustom"  //arc第三方库，这边是测试引擎所在的库
        ]
    }

**.arclint**

    {
        "exclude": [
            "(^externals/)",
            "(\\.lint-test$)"
        ],
        "linters": {
            "chmod": {
                "type": "chmod"
            },
            "filename": {
                "type": "filename"
            },
            "generated": {
                "type": "generated"
            },
            "json": {
                "type": "json",
                "include": [
                    "(^\\.arcconfig$)",
                    "(^\\.arclint$)",
                    "(\\.json$)"
                ]
            },
            "merge-conflict": {
                "type": "merge-conflict"
            },
            "nolint": {
                "type": "nolint"
            },
            "phutil-library": {
                "type": "phutil-library",
                "include": "(\\.php$)"
            },
            "phutil-xhpast": {
                "type": "phutil-xhpast",
                "include": "(\\.php$)"
            },
            "spelling": {
                "type": "spelling",
                "exclude": "(resources/spelling/.*\\.json$)"
            },
            "text": {
                "type": "text"
            },
            "xhpast": {
                "type": "xhpast",
                "include": "(\\.php$)",
                "severity": {
                    "16": "advice",
                    "34": "error"
                },
                "xhpast.php-version": "5.2.3",
                "xhpast.php-version.windows": "5.3.0"
            }
        }
    }


> **Note**: .arcconfig是必須的，.arclint則不是.

## arc命令

    $ arc help //帮助命令
    $ arc version //查看版本
    $ arc feature Start working on sth
    $ arc cover //who should review my change 
    $ arc patch //apply someone's revision
    $ arc diff //检查代码修改，并提交pha
    $ arc land //push commit
    $ arc unit //run testcase
    $ arc liberate
        
