.class final synthetic Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DuoFoldable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;->INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    const/4 v1, 0x1

    const-string v3, "didEnterSingleScreenMode"

    const-string v4, "didEnterSingleScreenMode()V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;->invoke(Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p1}, Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;->didEnterSingleScreenMode()V

    return-void
.end method
