.class Lcom/my/fridademo/MainActivity$2;
.super Lcom/my/fridademo/ABClass;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/fridademo/MainActivity;->internalClassFunc2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/fridademo/MainActivity;


# direct methods
.method constructor <init>(Lcom/my/fridademo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/my/fridademo/MainActivity;

    .line 69
    iput-object p1, p0, Lcom/my/fridademo/MainActivity$2;->this$0:Lcom/my/fridademo/MainActivity;

    invoke-direct {p0}, Lcom/my/fridademo/ABClass;-><init>()V

    return-void
.end method


# virtual methods
.method public say2(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentence"    # Ljava/lang/String;

    .line 72
    invoke-super {p0, p1}, Lcom/my/fridademo/ABClass;->say2(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/my/fridademo/MainActivity$2;->this$0:Lcom/my/fridademo/MainActivity;

    invoke-static {v0}, Lcom/my/fridademo/MainActivity;->access$000(Lcom/my/fridademo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/fridademo/MainActivity$2;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
