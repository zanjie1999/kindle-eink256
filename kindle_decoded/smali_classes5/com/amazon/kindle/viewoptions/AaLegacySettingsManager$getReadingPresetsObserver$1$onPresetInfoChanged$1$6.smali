.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->onPresetInfoChanged(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1073
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 0

    return-void
.end method
