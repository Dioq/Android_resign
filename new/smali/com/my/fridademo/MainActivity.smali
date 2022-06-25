.class public Lcom/my/fridademo/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private show_board:Landroid/widget/TextView;

.field private util2:Lcom/my/fridademo/Util2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/my/fridademo/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/my/fridademo/MainActivity;

    .line 11
    iget-object v0, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public active_func(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 148
    const-string v0, " JOJO"

    .line 149
    .local v0, "parma":Ljava/lang/String;
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->util2:Lcom/my/fridademo/Util2;

    invoke-virtual {v1, v0}, Lcom/my/fridademo/Util2;->active_call_func(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public active_static_func(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 141
    const-string v0, " Dio"

    .line 142
    .local v0, "parma":Ljava/lang/String;
    invoke-static {v0}, Lcom/my/fridademo/Util2;->active_static_call_func(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public construction_func(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 45
    new-instance v7, Lcom/my/fridademo/Student;

    const-string v1, "Leo"

    const-string v2, "man"

    const/16 v3, 0x12

    const-wide v4, 0x404d400000000000L    # 58.5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/my/fridademo/Student;-><init>(Ljava/lang/String;Ljava/lang/String;IDZ)V

    .line 46
    .local v0, "stu":Lcom/my/fridademo/Student;
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/my/fridademo/Student;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public func1(I)I
    .locals 1
    .param p1, "num"    # I

    .line 101
    add-int/lit8 v0, p1, 0xa

    return v0
.end method

.method public native getString()Ljava/lang/String;
.end method

.method public native hookSO(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public native hookSO2(II)I
.end method

.method public inner_class_func(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 87
    new-instance v0, Lcom/my/fridademo/OuterClass;

    invoke-direct {v0}, Lcom/my/fridademo/OuterClass;-><init>()V

    .line 88
    .local v0, "outerClass":Lcom/my/fridademo/OuterClass;
    new-instance v1, Lcom/my/fridademo/OuterClass$InternalClass;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/my/fridademo/OuterClass$InternalClass;-><init>(Lcom/my/fridademo/OuterClass;)V

    .line 89
    .local v1, "internalClass":Lcom/my/fridademo/OuterClass$InternalClass;
    const-string v2, "origin value"

    invoke-virtual {v1, v2}, Lcom/my/fridademo/OuterClass$InternalClass;->sayit2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public internalClassFunc(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 57
    new-instance v0, Lcom/my/fridademo/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/my/fridademo/MainActivity$1;-><init>(Lcom/my/fridademo/MainActivity;)V

    .line 64
    .local v0, "abClass":Lcom/my/fridademo/ABClass;
    const-string v1, "  MainActivity"

    invoke-virtual {v0, v1}, Lcom/my/fridademo/ABClass;->say(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public internalClassFunc2(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 69
    new-instance v0, Lcom/my/fridademo/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/my/fridademo/MainActivity$2;-><init>(Lcom/my/fridademo/MainActivity;)V

    .line 75
    const-string v1, "  MainActivity 2"

    invoke-virtual {v0, v1}, Lcom/my/fridademo/MainActivity$2;->say2(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public load_func(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 95
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/my/fridademo/MainActivity;->func1(I)I

    move-result v0

    .line 96
    .local v0, "result":I
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hooked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public ndk_func(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/my/fridademo/MainActivity;->getString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public ndk_so(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 127
    const-string v0, "Tom"

    const/16 v1, 0x11

    const/16 v2, 0x63

    invoke-virtual {p0, v0, v1, v2}, Lcom/my/fridademo/MainActivity;->hookSO(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public ndk_so2(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 135
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/my/fridademo/MainActivity;->hookSO2(II)I

    move-result v0

    .line 136
    .local v0, "result":I
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native \u8fd4\u56de\u503c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/my/fridademo/MainActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/my/fridademo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    .line 26
    new-instance v0, Lcom/my/fridademo/Util2;

    invoke-direct {v0}, Lcom/my/fridademo/Util2;-><init>()V

    iput-object v0, p0, Lcom/my/fridademo/MainActivity;->util2:Lcom/my/fridademo/Util2;

    .line 27
    return-void
.end method

.method public ordinaryFunc(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 31
    new-instance v0, Lcom/my/fridademo/Util;

    invoke-direct {v0}, Lcom/my/fridademo/Util;-><init>()V

    .line 32
    .local v0, "util":Lcom/my/fridademo/Util;
    const-string v1, "Dio"

    const-string v2, "wonam"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/fridademo/Util;->ordinaryFunc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public override_function(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 38
    new-instance v0, Lcom/my/fridademo/Util;

    invoke-direct {v0}, Lcom/my/fridademo/Util;-><init>()V

    .line 39
    .local v0, "util":Lcom/my/fridademo/Util;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/my/fridademo/Util;->judgeByAge(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public single_func(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 51
    invoke-static {}, Lcom/my/fridademo/MySingleton;->getInstance()Lcom/my/fridademo/MySingleton;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-virtual {v0, v1}, Lcom/my/fridademo/MySingleton;->post(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public staic_func(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 106
    const-string v0, "Lily"

    const/16 v1, 0x62

    invoke-static {v0, v1}, Lcom/my/fridademo/Util;->myInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public static_inner_class_func(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 80
    new-instance v0, Lcom/my/fridademo/StaticInnerClass$Inner;

    invoke-direct {v0}, Lcom/my/fridademo/StaticInnerClass$Inner;-><init>()V

    .line 81
    .local v0, "innner":Lcom/my/fridademo/StaticInnerClass$Inner;
    const-string v1, "p_MainActivity"

    invoke-virtual {v0, v1}, Lcom/my/fridademo/StaticInnerClass$Inner;->func1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/my/fridademo/MainActivity;->show_board:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method
