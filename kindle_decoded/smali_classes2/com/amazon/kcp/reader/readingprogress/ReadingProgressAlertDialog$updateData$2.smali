.class final Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$2;
.super Ljava/lang/Object;
.source "ReadingProgressAlertDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$2;->this$0:Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$2;->this$0:Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;

    invoke-virtual {p1, p1}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
