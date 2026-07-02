.class Lcom/amazon/kcp/font/SystemFontUtils$1;
.super Ljava/lang/Object;
.source "SystemFontUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/SystemFontUtils;->persistSystemFontFileInfo(Ljava/lang/String;Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$settings:Lcom/amazon/system/io/IPersistentSettingsHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/SystemFontUtils;Lcom/amazon/system/io/IPersistentSettingsHelper;)V
    .locals 0

    .line 153
    iput-object p2, p0, Lcom/amazon/kcp/font/SystemFontUtils$1;->val$settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/font/SystemFontUtils$1;->val$settings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    invoke-interface {v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/font/SystemFontUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error persisting tcn system font info"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
