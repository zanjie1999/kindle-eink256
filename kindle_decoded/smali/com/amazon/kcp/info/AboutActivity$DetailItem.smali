.class Lcom/amazon/kcp/info/AboutActivity$DetailItem;
.super Ljava/lang/Object;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailItem"
.end annotation


# instance fields
.field public final detailTitle:Ljava/lang/String;

.field public final detailValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/info/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;->detailTitle:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/amazon/kcp/info/AboutActivity$DetailItem;->detailValue:Ljava/lang/String;

    return-void
.end method
