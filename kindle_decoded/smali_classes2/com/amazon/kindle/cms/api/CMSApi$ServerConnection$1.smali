.class Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection$1;
.super Ljava/lang/Object;
.source "CMSApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->bind(Landroid/content/Intent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection$1;->this$1:Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection$1;->this$1:Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;->access$500(Lcom/amazon/kindle/cms/api/CMSApi$ServerConnection;)V

    return-void
.end method
