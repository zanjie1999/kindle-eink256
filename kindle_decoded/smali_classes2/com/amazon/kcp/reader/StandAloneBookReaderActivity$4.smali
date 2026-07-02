.class Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$4;
.super Ljava/lang/Object;
.source "StandAloneBookReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->addTtsButtonForAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$4;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 403
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$4;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->startContinuousReading()V

    return-void
.end method
