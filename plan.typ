#import "@preview/numbly:0.1.0": *

#set page(paper: "a4", margin: 4pt)
#set text(
    font: ((name: "Lato", covers: "latin-in-cjk"), "Noto Serif CJK SC", "Noto Sans CJK SC"),
    lang: "zh",
    region: "cn",
)
#show table: set align(center)
#set table(align: center + horizon)
#set heading(numbering: numbly(
    "{1:一}、",
    "{2:1}.",
    "{2}.{3:1}",
))
#show heading.where(level: 1): it => {
    show h.where(amount: .3em): none
    set align(center)
    it
}

#let vtext(s) = block(
    breakable: false,
    stack(
        dir: ttb,
        spacing: 7pt,
        ..s.replace("——", "\u{fe31}").clusters().map(c => align(center, c)),
    ),
)

= 分布

#table(
    columns: 4,
    inset: 6pt,
    table.cell(colspan: 2)[计划], table.cell(colspan: 2)[学分],
    table.cell(rowspan: 6)[专业培养], [通识教育必修], $31$, table.cell(rowspan: 6)[$155$],
    [学科平台基础], $35$,
    [专业必修], $68$,
    [专业选修], $9$,
    [通识教育核心], $8$,
    [通识教育选修], $4$,
    table.cell(colspan: 2)[重点培养], table.cell(colspan: 2)[$12$],
    table.cell(colspan: 2)[创新实践], table.cell(colspan: 2)[$4$],
    table.cell(colspan: 2)[拓展培养], table.cell(colspan: 2)[$4$],
)

= 课程

#set math.frac(style: "horizontal")
#let last-course = state("last-course", none)
#show label("C"): it => {
    last-course.update((name: it.text, kind: "C"))
    strike(stroke: (thickness: 3pt, paint: blue.darken(30%), cap: "round"), extent: 8pt, it)
}
#show label("P"): it => {
    last-course.update((name: it.text, kind: "P"))
    it
}
#show label("S"): it => {
    last-course.update((name: it.text, kind: "S"))
    strike(stroke: (thickness: 3pt, paint: red.darken(30%), cap: "round"), extent: 8pt, it)
}
#let review(body) = context {
    let c = last-course.get()
    if c != none [#metadata(c + (review: body))<R>]
}
#table(
    columns: 6,
    inset: 6pt,
    table.cell(colspan: 2)[类别], [课程号], [课程], [学分], [学期],
    table.cell(rowspan: 99, vtext("专业培养计划")), table.cell(rowspan: 29, vtext("通识教育必修")),
    [sd02810740], [习近平新时代中国特色社会主义思想概论<P>], $3$, $6$,
    [sd02810870], [毛泽东思想和中国特色社会主义理论体系概论<P>], $3$, $6$,
    [sd02810880],
    [马克思主义基本原理<C>#review[
            - 老师：张政
            - 课堂：不算无聊，不定时点名]],
    $3$,
    $4$,
    [sd02810860],
    [中国近现代史纲要<C>#review[
            - 老师：陈家付
            - 课堂：点名少但严格
            - 考试：抄书]],
    $3$,
    $1$,
    [sd02810850],
    [思想道德与法治<C>#review[
            - 课堂：无点名
                - 考试：抄书]],
    $3$,
    $1$,
    [sd03119A82], [新工科综合英语（1）<C>], $2$, $1$,
    [sd03119A72], [新工科综合英语（2）<C>], $2$, $2$,
    [sd03119BC2],
    [科技英语文献阅读与翻译<C>#review[
            - 老师：高小雅
            - 课堂：无点名，水]],
    $2$,
    $3/4$,
    [sd03119BB2],
    [英语演讲与辩论<C>#review[
            - 老师：吴琳
            - 课堂：点名，水]],
    $2$,
    $3/4$,
    [sd03119B92], [大学基础英语（1）<S>], $2$, $1$,
    [sd03119BA2], [大学基础英语（2）<S>], $2$, $2$,
    [sd03119B72], [大学基础英语（3）<S>], $2$, $3$,
    [sd03119B72], [大学基础英语（4）<S>], $2$, $4$,
    [sd03119BE2], [通用学术英语（1）<S>], $2$, $1$,
    [sd03119BF2], [通用学术英语（2）<S>], $2$, $2$,
    [sd02910630],
    [体育（1）<C>#review[
            - 老师：陈德云，羽毛球
            - 课堂：强度大，严格且教学死板
            - 考试：发球]],
    $1$,
    $1$,
    [sd02910640],
    [体育（2）<C>#review[
            - 课堂：单打比赛
            - 考试：高远球]],
    $1$,
    $1$,
    [sd02910650],
    [体育（3）<C>#review[
            - 课堂：双打比赛
            - 考试：对拉高远球]],
    $1$,
    $1$,
    [sd02910660],
    [体育（4）<C>#review[
            - 课堂：单打+双打比赛。
            - 考试：吊球]],
    $1$,
    $1$,
    [sd06910010],
    [军事理论<C>#review[
            - 课堂：范围+口令签到
            - 考试：抄书]],
    $2$,
    $2$,
    [sd090101C0], [形势与政策（1）<C>], $0$, $1$,
    [sd090101D0], [形势与政策（2）<C>], $0.5$, $2$,
    [sd090101E0], [形势与政策（3）<C>], $0$, $3$,
    [sd090101F0], [形势与政策（4）<C>], $0.5$, $4$,
    [sd09010200], [形势与政策（5）<C>], $0$, $5$,
    [sd09010210], [形势与政策（6）<C>], $0.5$, $6$,
    [sd090101A0], [形势与政策（7）<C>], $0$, $7$,
    [sd090101B0], [形势与政策（8）<C>], $0.5$, $8$,
    table.cell(colspan: 2)[合计], $31$, [],
    table.cell(rowspan: 13, vtext("学科平台基础")),
    [sd30210010],
    [高等数学（1）<C>#review[
            - 课堂：无点名，水
            - 考试：捞]],
    $5$,
    $1$,
    [sd302203B0],
    [线性代数<C>#review[
            - 老师：张人仁
            - 课堂：无点名，水
            - 考试：捞]],
    $3$,
    $1$,
    [sd01326350],
    [程序设计基础<C>#review[
            - 老师：韩芳溪
            - 课堂：不现代
            - 实验：模拟+五子棋
            - 考试：机试]],
    $3$,
    $1$,
    [sd01336390],
    [计算概论<C>#review[
            - 老师：张广辉
            - 课堂：无点名
            - 考试：捞]],
    $2$,
    $1$,
    [sd30220010],
    [高等数学（2）<C>#review[
            - 老师：刘杨
            - 考试：捞]],
    $5$,
    $2$,
    [sd99320020],
    [大学物理<C>#review[
            - 考试：基本作业]],
    $3$,
    $2$,
    [sd99320000],
    [大学物理实验I<C>#review[
            - 老师：某些咄咄逼人
            - 实验：水]],
    $1$,
    $2$,
    [sd994202C0],
    [工程实践创新训练<C>#review[
            - 实验：水]],
    $1$,
    $2$,
    [sd01336360],
    [人工智能引论<C>#review[
            - 老师：曾琼+其他
            - 实验：水
            - 考试：斩杀]],
    $3$,
    $2$,
    [sd01336370],
    [高级语言程序设计<C>#review[
            - 老师：腾德军
            - 课堂：oop
            - 实验：wsl，smart pointer
            - 考试：纯文本编辑器（无任何其他功能），严格但捞]],
    $3$,
    $2$,
    [sd01336500],
    [概率论与数理统计<C>#review[
            - 老师：李琨
            - 课堂：无签到点名
            - 考试：不捞]],
    $3$,
    $3$,
    [sd01336550],
    [创新创业教育实践<C>#review[
            - 老师：栾俊峰
            - 课堂：
                + 助教教算法竞赛，考csp
                + 老师（杨振，刘建中）教vibe，杨振水平不像人类]],
    $3$,
    $4$,
    table.cell(colspan: 2)[合计], $35$, [],
    table.cell(rowspan: 9, vtext("专业必修——专业基础")),
    [sd01326330], [新生研讨课<C>], $1$, $1$,
    [sd01331760],
    [离散数学<C>#review[
            - 老师：王君义
            - 考试：水，捞]],
    $4$,
    $2$,
    [sd01336530],
    [数据结构与算法<C>#review[
            - 老师：肖梦白
            - 实验：可能被拷打
            - 考试：捞]],
    $4$,
    $3$,
    [sd01336420],
    [计算机网络<C>#review[
            - 老师：张广辉
            - 考试：捞]],
    $3$,
    $3$,
    [sd01336560],
    [计算机组成与系统结构<C>#review[
            - 老师：马博洋
            - 课堂：作业多
            - 实验：不像人类
            - 考试：挂人多]],
    $5$,
    $4$,
    [sd01331930],
    [操作系统<C>#review[
            - 老师：刘健中，个人水平很不错
            - 课堂：小测
            - 实验：水，祖传
            - 考试：捞]],
    $4$,
    $4$,
    [sd01331940],
    [算法设计与分析<C>#review[
            - 老师：姜海涛
            - 课堂：课间点名
            - 考试：捞]],
    $3$,
    $4$,
    [sd013363B0],
    [数据库系统<C>#review[
            - 老师：梁文革
            - 课堂：签到，作业多
            - 实验：水
            - 考试：捞]],
    $4$,
    $4$,
    table.cell(colspan: 2)[合计], $28$, [],
    table.cell(rowspan: 14, vtext("专业必修——专业核心")),
    [sd01332140],
    [自主智能系统与机器人<C>#review[
            - 老师：栗华
            - 实验：祖传，水
            - 考试：开卷]],
    $3$,
    $3$,
    [sd01336540], [智能系统综合实践<C>#review[- 实验：$4$道数据结构实现，组队$1$道应用，水]], $2$, $3$,
    [sd01336590],
    [机器学习与模式识别<C>#review[
            - 老师：邹逸飞
            - 课堂：内容抄的
            - 实验：水
            - 考试：捞]],
    $3$,
    $4$,
    [sd01332150],
    [认知科学与类脑计算<C>#review[
            - 老师：吴强
            - 实验：水
            - 考试：开卷
        ]],
    $3$,
    $5$,
    [sd01332100],
    [神经网络与深度学习<C>#review[
            - 老师：张兆榕
            - 课堂：签到
            - 实验：水
            - 考试：闭卷
        ]],
    $3$,
    $5$,
    [sd01331450],
    [计算机图形学<C>#review[
            - 老师：赵海森
            - 课堂：范围签到
            - 实验：不像人类
            - 考试：45分斩杀
        ]],
    $3$,
    $5$,
    [sd01332080],
    [信息检索与数据挖掘<C>#review[
            - 老师：尹建华
            - 实验：水
            - 考试：水
        ]],
    $3$,
    $5$,
    [sd01332070],
    [人工智能应用实践<C>#review[
            - 老师：吕琳
            - 课堂：组队项目，水
        ]],
    $3$,
    $5$,
    [sd01332110], [自然语言处理<P>], $3$, $6$,
    [sd01332310], [计算机视觉<P>], $3$, $6$,
    [sd01336400], [创新实践与成果展示<P>], $2$, $6$,
    [sd01336510], [专业实践<P>], $2$, $6$,
    [sd01330120], [毕业论文（设计）<P>], $7$, $8$,
    table.cell(colspan: 2)[合计], $40$, [],
    table.cell(rowspan: 21, vtext("专业选修——专业限选")),
    [sd0133232V], [密码学引论<S>], $3$, $5$,
    [sd013363F0], [分布式计算<S>], $3$, $5$,
    [sd01331110], [嵌入式系统原理与应用<S>], $3$, $5$,
    [sd01331410], [汇编语言<S>], $3$, $5$,
    [sd013365E0], [并行计算<S>], $3$, $5$,
    [sd01331960], [大数据管理与分析<S>], $3$, $5$,
    [sd01332010], [计算理论<S>], $3$, $5$,
    [sd01331980], [可视化技术<S>], $3$, $5$,
    [sd01332220],
    [机器人工程实践<C>#review[
            - 老师：程晓童
            - 课堂：水]],
    $3$,
    $5$,
    [sd01331160], [数字图像处理<S>], $3$, $5$,
    [sd013161BV],
    [区块链原理<C>#review[
            - 老师：徐明辉，个人水平高
            - 课堂：水
            - 考试：线上开卷，允许ai]],
    $3$,
    $6$,
    [sd01332240], [云计算技术<S>], $3$, $6$,
    [sd01332300], [大数据安全<S>], $3$, $6$,
    [sd01331150], [数值计算<S>], $3$, $6$,
    [sd013363C0], [最优化理论与方法<S>], $3$, $6$,
    [sd01332200], [现代软件开发技术<S>], $3$, $6$,
    [sd01332190], [社交网络与舆情分析<S>], $3$, $6$,
    [sd01331130], [人机交互技术<S>], $3$, $6$,
    [sd013365F0], [人工智能驱动的科学研究<S>], $3$, $6$,
    [sd013364E0], [菁英班科研实践<S>], $3$, $6$,
    table.cell(colspan: 2)[合计], $6$, [],
    table.cell(rowspan: 5, vtext("专业选修——专业任选")),
    [sd01336470], [高级计算机体系结构（本研贯通）<S>], $3$, $7$,
    [sd01336480], [高级算法设计与分析（本研贯通）<S>], $3$, $7$,
    [sd013365C0], [学科前沿讲座<S>], $3$, $7$,
    [sd01336520], [专业综合实习（校外）<C>], $3$, $7$,
    table.cell(colspan: 2)[合计], $3$, [],
    table.cell(rowspan: 5, vtext("通识教育核心")),
    [00100],
    [科技素养<C>#review[
            - 老师：姜天宇的微生物与人类
            - 课堂：水
            - 结课：作文]],
    $2$,
    $1-8$,
    [00110],
    [人文素养<C>#review[
            - 老师：领读经典
            - 课堂：水]],
    $2$,
    $1-8$,
    [00120],
    [艺术审美<C>#review[
            - 老师：李岩的科幻电影赏析
            - 课堂：水
            - 结课：作文]],
    $2$,
    $1-8$,
    [00130],
    [生命健康<C>#review[
            - 老师：孙艺伟的以影知心，人很好
            - 课堂：水
            - 结课：小作文]],
    $2$,
    $1-8$,
    table.cell(colspan: 2)[合计], $8$, [],
    table.cell(rowspan: 3, vtext("通识教育选修")),
    [00090],
    [通识教育选修<C>#review[
            - 老师：成秀珍的基于人工智能的Python入门编程，教学是别的老师
            - 课堂：水
            - 实验：水
            - 结课：pre]],
    $2$,
    $1-8$,
    [],
    [通选类国际化<C>#review[
            - 老师：密码隐私数据处理
            - 课堂：线上，水
            - 结课：作文]],
    $2$,
    [],
    table.cell(colspan: 2)[合计], $4$, [],
    table.cell(rowspan: 10, colspan: 2, vtext("重点提升计划")),
    [sd072201A0], [“大思政”社会实践（1）<C>], $1$, $2$,
    [sd072201B0], [“大思政”社会实践（2）<C>], $0.5$, $4$,
    [sd072201C0], [“大思政”社会实践（3）<C>], $0.5$, $6$,
    [sd10210010], [国家安全教育课程（青岛）<C>], $2$, $1$,
    [sd02810590], [四史教育系列专题<C>], $1$, $2$,
    [sd07810230], [大学生心理健康教育（青岛）<C>], $2$, $1$,
    [00080], [劳动教育<C>], $2$, $2$,
    [sd07110120], [大学生职业生涯规划与就业指导<C>], $1$, $2$,
    [sd06910050], [军事技能<C>], $2$, $1$,
    table.cell(colspan: 2)[合计], $12$, [],
    table.cell(rowspan: 3, colspan: 2, vtext("创新创业计划")),
    [稷下创新],
    [稷下创新<C>#review[
            1. 跨学科交叉实践：
                - 老师：栗华
                - 结课：组队作文
            2. 从锂到钠：
                - 老师：徐明秋
                - 课堂：水
                - 考试：线上
        ]],
    $2$,
    $1-6$,
    [齐鲁创业], [齐鲁创业<C>], $2$, $1-6$,
    table.cell(colspan: 2)[合计], $4$, [],
    table.cell(rowspan: 5, colspan: 2, vtext("拓展培养计划")),
    [00200], [学术创新<S>], $2$, $1-8$,
    [00210], [文化艺术<C>], $2$, $1-8$,
    [00220], [社会服务<S>], $2$, $1-8$,
    [00230], [身心健康<C>], $2$, $1-8$,
    table.cell(colspan: 2)[合计], $4$, [],
) <course-table>

= 进度

#context {
    let kinds = (<C>, <P>, <S>)
    let cells = query(<course-table>).first().children
    let credits(kind) = {
        let total = 0
        for (i, cell) in cells.enumerate() {
            let parts = cell.body.at("children", default: (cell.body,))
            if parts.any(part => part.at("label", default: none) == kind) {
                total += float(cells.at(i + 1).body.body.text)
            }
        }
        total
    }
    table(
        columns: 3,
        inset: 6pt,
        [已修], [待修], [不修],
        ..kinds.map(l => [#query(l).len() 门]),
        ..kinds.map(l => [#credits(l) 学分]),
        ..kinds.map(l => query(l).map(c => c.text).join([\ ])),
    )
}


= 评价

#context table(
    columns: 2,
    align: (x, y) => if x == 0 or y == 0 { center + horizon } else { left },
    inset: 6pt,
    [课程],
    [评价],
    ..query(<R>)
        .map(it => it.value)
        .filter(it => it.kind == "C" and it.review != [])
        .map(it => (it.name, it.review))
        .flatten(),
)
