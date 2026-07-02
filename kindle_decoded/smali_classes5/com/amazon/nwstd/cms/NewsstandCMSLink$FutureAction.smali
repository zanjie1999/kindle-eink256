.class Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;
.super Ljava/lang/Object;
.source "NewsstandCMSLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/cms/NewsstandCMSLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureAction"
.end annotation


# instance fields
.field public final element:Lcom/amazon/nwstd/cms/CMSLibraryBanner;

.field public final type:Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 622
    :goto_0
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 624
    iput-object p2, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;->type:Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;

    .line 625
    iput-object p3, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;->element:Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    return-void
.end method
