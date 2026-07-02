.class Lcom/amazon/kindle/cms/api/CMSApi$2;
.super Ljava/lang/Object;
.source "CMSApi.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/api/CMSApi;->initializeDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/api/CMSApi;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/api/CMSApi;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSApi$2;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSApi$2;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->access$200(Lcom/amazon/kindle/cms/api/CMSApi;)Lcom/amazon/kindle/cms/api/DBOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSApi$2;->this$0:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-static {v1}, Lcom/amazon/kindle/cms/api/CMSApi;->access$100(Lcom/amazon/kindle/cms/api/CMSApi;)Lcom/amazon/kindle/cms/api/CMSApi$CMSApiDbErrorHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/DBOpenHelper;->openOrCreateDatabase(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/CMSApi$2;->call()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
