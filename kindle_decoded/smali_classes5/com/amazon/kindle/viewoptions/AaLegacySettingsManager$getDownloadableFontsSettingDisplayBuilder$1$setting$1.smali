.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getDownloadableFontsSettingDisplayBuilder(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 1

    .line 1014
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getDownloadableFontsSettingDisplayBuilder$1$setting$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
