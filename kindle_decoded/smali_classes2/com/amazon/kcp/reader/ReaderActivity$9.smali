.class Lcom/amazon/kcp/reader/ReaderActivity$9;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setupTOC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentReadPosition()I
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$700(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/tableofcontents/TOCDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->updateSelectedPosition()I

    move-result v0

    return v0
.end method
