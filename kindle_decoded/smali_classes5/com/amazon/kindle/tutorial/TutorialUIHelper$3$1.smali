.class Lcom/amazon/kindle/tutorial/TutorialUIHelper$3$1;
.super Ljava/lang/Object;
.source "TutorialUIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3$1;->this$0:Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3$1;->this$0:Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;

    iget-object v0, v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;->val$previewImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
