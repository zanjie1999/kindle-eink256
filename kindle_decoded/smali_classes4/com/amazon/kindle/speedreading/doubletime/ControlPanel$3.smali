.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$3;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->showEndOfChapterDialog(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$eocDialog:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V
    .locals 0

    .line 232
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$3;->val$eocDialog:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$3;->val$eocDialog:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
