.class Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Lcom/amazon/identity/auth/device/ed;Landroid/webkit/WebView;Lorg/json/JSONObject;Lcom/amazon/identity/auth/device/ej;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aM:Lcom/amazon/identity/auth/device/ed;

.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

.field final synthetic kr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;Lcom/amazon/identity/auth/device/ed;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->aM:Lcom/amazon/identity/auth/device/ed;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->eG:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->kr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 157
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refreshing cookie to indicate latest permission and metadata information."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->aM:Lcom/amazon/identity/auth/device/ed;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->eG:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$2;->kr:Ljava/lang/String;

    const-string/jumbo v4, "map-md"

    const-string v6, "/ap"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
