.class public Lcom/my/fridademo/Util2;
.super Ljava/lang/Object;
.source "Util2.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static num:I

.field public static static_bool_var:Z


# instance fields
.field private bool_var:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "10001"

    sput-object v0, Lcom/my/fridademo/Util2;->TAG:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/my/fridademo/Util2;->num:I

    .line 9
    sput-boolean v0, Lcom/my/fridademo/Util2;->static_bool_var:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/fridademo/Util2;->bool_var:Z

    return-void
.end method

.method public static active_static_call_func(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "parma"    # Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/my/fridademo/Util2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_static_call_func ||| parma : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u5c5e\u6027static_bool_var : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/my/fridademo/Util2;->static_bool_var:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/my/fridademo/Util2;->num:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/my/fridademo/Util2;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "static \u5728log\u65e5\u5fd7\u91cc\u67e5\u770b\u6548\u679c! err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public active_call_func(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "parma"    # Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/my/fridademo/Util2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_call_func ||| parma : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u5c5e\u6027bool_var : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/my/fridademo/Util2;->bool_var:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/my/fridademo/Util2;->num:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/my/fridademo/Util2;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5728log\u65e5\u5fd7\u91cc\u67e5\u770b\u6548\u679c! err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
