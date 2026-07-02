.class Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/ej;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic aM:Lcom/amazon/identity/auth/device/ed;

.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic ko:Z

.field final synthetic kp:Lcom/amazon/identity/auth/device/dr;

.field final synthetic kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;Landroid/webkit/WebView;ZLcom/amazon/identity/auth/device/dr;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->aM:Lcom/amazon/identity/auth/device/ed;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->eG:Landroid/webkit/WebView;

    iput-boolean p5, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->ko:Z

    iput-object p6, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kp:Lcom/amazon/identity/auth/device/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->aM:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->aM:Lcom/amazon/identity/auth/device/ed;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->eG:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->N:Lcom/amazon/identity/auth/device/ej;

    iget-boolean v8, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->ko:Z

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Lcom/amazon/identity/auth/device/ed;Landroid/webkit/WebView;Lorg/json/JSONObject;Lcom/amazon/identity/auth/device/ej;Z)V

    .line 116
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAP is going to callback javascript function: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->b(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAP javascript callback data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kp:Lcom/amazon/identity/auth/device/dr;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->eG:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->b(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/identity/auth/device/dr;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->dc()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler$1;->kq:Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->c(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
