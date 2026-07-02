.class Lcom/amazon/android/webkit/android/AndroidCacheManager$1;
.super Ljava/lang/Object;
.source "AndroidCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidCacheManager;->setWebCoreCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidCacheManager;

.field final synthetic val$webCoreMaxCacheSize:I


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidCacheManager;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidCacheManager$1;->this$0:Lcom/amazon/android/webkit/android/AndroidCacheManager;

    iput p2, p0, Lcom/amazon/android/webkit/android/AndroidCacheManager$1;->val$webCoreMaxCacheSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 58
    invoke-static {}, Lcom/amazon/android/webkit/android/AndroidCacheManager;->access$000()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "android.webkit.BrowserFrame"

    .line 61
    invoke-static {v0}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sJavaBridge"

    .line 63
    invoke-static {v0, v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 65
    invoke-static {v1, v0}, Lcom/amazon/android/webkit/android/Reflect;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.webkit.JWebCoreJavaBridge"

    .line 69
    invoke-static {v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 71
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "setCacheSize"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 73
    iget v3, p0, Lcom/amazon/android/webkit/android/AndroidCacheManager$1;->val$webCoreMaxCacheSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/amazon/android/webkit/android/AndroidCacheManager;->access$000()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resized WebCore resource cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
