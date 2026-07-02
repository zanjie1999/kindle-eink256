.class Lcom/amazon/kcp/info/AboutActivity$GroupItem;
.super Ljava/lang/Object;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupItem"
.end annotation


# instance fields
.field public final groupStatus:Z

.field public final groupTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/info/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/info/AboutActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$GroupItem;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/amazon/kcp/info/AboutActivity$GroupItem;->groupTitle:Ljava/lang/String;

    .line 308
    iput-boolean p3, p0, Lcom/amazon/kcp/info/AboutActivity$GroupItem;->groupStatus:Z

    return-void
.end method
