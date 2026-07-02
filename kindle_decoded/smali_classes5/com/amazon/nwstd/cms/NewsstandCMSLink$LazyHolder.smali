.class Lcom/amazon/nwstd/cms/NewsstandCMSLink$LazyHolder;
.super Ljava/lang/Object;
.source "NewsstandCMSLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/cms/NewsstandCMSLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/nwstd/cms/NewsstandCMSLink;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 155
    new-instance v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/cms/NewsstandCMSLink$1;)V

    sput-object v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$LazyHolder;->INSTANCE:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/nwstd/cms/NewsstandCMSLink;
    .locals 1

    .line 154
    sget-object v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$LazyHolder;->INSTANCE:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    return-object v0
.end method
