.class final Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler$sharedPrefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManagerResumer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler$sharedPrefs$2;->$appContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler$sharedPrefs$2;->$appContext:Landroid/content/Context;

    const-string v1, "AssetRequestDownloadManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler$sharedPrefs$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
