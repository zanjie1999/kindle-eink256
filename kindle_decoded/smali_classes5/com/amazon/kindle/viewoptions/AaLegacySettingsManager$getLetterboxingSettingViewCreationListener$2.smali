.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getLetterboxingSettingViewCreationListener()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;

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

    .line 70
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getLetterboxingSettingViewCreationListener$2;->invoke(Ljava/util/ArrayList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
