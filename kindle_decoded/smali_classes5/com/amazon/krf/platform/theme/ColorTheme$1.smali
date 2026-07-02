.class Lcom/amazon/krf/platform/theme/ColorTheme$1;
.super Ljava/lang/Object;
.source "ColorTheme.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/theme/ColorTheme;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/amazon/krf/platform/theme/ColorSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/theme/ColorTheme;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/theme/ColorTheme;Ljava/util/Iterator;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/krf/platform/theme/ColorTheme$1;->this$0:Lcom/amazon/krf/platform/theme/ColorTheme;

    iput-object p2, p0, Lcom/amazon/krf/platform/theme/ColorTheme$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/amazon/krf/platform/theme/ColorSetting;
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/amazon/krf/platform/theme/ColorSetting;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/krf/platform/theme/ColorTheme$1;->this$0:Lcom/amazon/krf/platform/theme/ColorTheme;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/krf/platform/theme/ColorSetting;-><init>(Ljava/lang/String;ILcom/amazon/krf/platform/theme/ColorTheme;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/amazon/krf/platform/theme/ColorTheme$1;->next()Lcom/amazon/krf/platform/theme/ColorSetting;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorTheme$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
