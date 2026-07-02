.class final Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AboutThisBookAaSettingsProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->getToggleHandler(Landroid/content/Context;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    iput-object p2, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    iget-object v1, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$updateToggleValue(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;Landroid/content/Context;Z)V

    .line 157
    iget-object v0, p0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider$getToggleHandler$1;->this$0:Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    xor-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->USER_AA:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;->access$reportMetricsForAboutThisBookSwitch(Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;ZZLcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method
