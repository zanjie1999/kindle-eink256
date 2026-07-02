.class Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;
.super Ljava/lang/Object;
.source "DynamicFontDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->downloadOnDemandFontsIfNeeded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$onDemandFonts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;->this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    iput-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;->val$onDemandFonts:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;->val$onDemandFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 322
    iget-object v2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;->this$0:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    iget-object v3, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;->val$language:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->access$300(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
