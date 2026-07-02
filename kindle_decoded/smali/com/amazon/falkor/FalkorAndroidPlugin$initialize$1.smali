.class final Lcom/amazon/falkor/FalkorAndroidPlugin$initialize$1;
.super Ljava/lang/Object;
.source "FalkorAndroidPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/FalkorAndroidPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefsImpl;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/FalkorPluginPrefsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/FalkorAndroidPlugin$initialize$1;->$falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;
    .locals 2

    .line 106
    new-instance v0, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/falkor/FalkorAndroidPlugin$initialize$1;->$falkorPrefs:Lcom/amazon/falkor/FalkorPluginPrefsImpl;

    invoke-direct {v0, p1, v1}, Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;-><init>(Landroid/content/Context;Lcom/amazon/falkor/FalkorPluginPrefs;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/FalkorAndroidPlugin$initialize$1;->get(Landroid/content/Context;)Lcom/amazon/falkor/debug/FalkorNetworkDebugPageProvider;

    move-result-object p1

    return-object p1
.end method
