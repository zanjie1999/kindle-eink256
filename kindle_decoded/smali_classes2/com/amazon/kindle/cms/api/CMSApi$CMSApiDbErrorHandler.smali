.class final Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;
.super Ljava/lang/Object;
.source "CMSApi.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CMSApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CMSApiDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/api/CMSApi;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/cms/api/CMSApi;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/cms/api/CMSApi;Lcom/amazon/kindle/cms/api/CMSApi$1;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;-><init>(Lcom/amazon/kindle/cms/api/CMSApi;)V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p1, "CmsApi"

    const-string v0, "Corrupted database detected."

    .line 351
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {p1}, Lcom/amazon/kindle/cms/api/CMSApi;->access$300(Lcom/amazon/kindle/cms/api/CMSApi;)V

    return-void
.end method
