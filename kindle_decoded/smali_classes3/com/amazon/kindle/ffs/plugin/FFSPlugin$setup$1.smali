.class final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->setup$ffs_debug(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
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


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;->INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;
    .locals 2

    .line 166
    new-instance v0, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;->get(Landroid/content/Context;)Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;

    move-result-object p1

    return-object p1
.end method
