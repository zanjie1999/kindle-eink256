.class Lcom/amazon/nwstd/cms/NewsstandCMSLink$2;
.super Ljava/lang/Object;
.source "NewsstandCMSLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/cms/NewsstandCMSLink;->postBackgroundTriggerReconnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$2;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$2;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$400(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    return-void
.end method
