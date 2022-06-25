.class Lcom/my/fridademo/MainActivity$1;
.super Lcom/my/fridademo/ABClass;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/fridademo/MainActivity;->internalClassFunc(Landroid/view/View;)V
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

    .line 57
    iput-object p1, p0, Lcom/my/fridademo/MainActivity$1;->this$0:Lcom/my/fridademo/MainActivity;

    invoke-direct {p0}, Lcom/my/fridademo/ABClass;-><init>()V

    return-void
.end method


# virtual methods
.method public say(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentence"    # Ljava/lang/String;

    .line 60
    invoke-super {p0, p1}, Lcom/my/fridademo/ABClass;->say(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/my/fridademo/MainActivity$1;->this$0:Lcom/my/fridademo/MainActivity;

    invoke-static {v0}, Lcom/my/fridademo/MainActivity;->access$000(Lcom/my/fridademo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/fridademo/MainActivity$1;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
