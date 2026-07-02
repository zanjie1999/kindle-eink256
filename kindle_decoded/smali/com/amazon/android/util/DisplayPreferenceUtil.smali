.class public Lcom/amazon/android/util/DisplayPreferenceUtil;
.super Ljava/lang/Object;
.source "DisplayPreferenceUtil.java"


# static fields
.field private static final displayPreferenceMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    sget-object v0, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    sget-object v1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    sget-object v2, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    sget-object v3, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/util/DisplayPreferenceUtil;->displayPreferenceMap:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method public static fromKRXDisplayPreference(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/android/util/DisplayPreferenceUtil;->displayPreferenceMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    if-nez p0, :cond_0

    .line 45
    sget-object p0, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    :cond_0
    return-object p0
.end method
