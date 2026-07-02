.class Lcom/amazon/overlay/translation/SpeakPlayer$3;
.super Ljava/lang/Object;
.source "SpeakPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/SpeakPlayer;->getStartSpeakCallback()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/SpeakPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/SpeakPlayer;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$3;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 269
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$3;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/SpeakPlayer;->play()V

    return-void
.end method
