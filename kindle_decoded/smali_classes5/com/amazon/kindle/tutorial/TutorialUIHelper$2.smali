.class final Lcom/amazon/kindle/tutorial/TutorialUIHelper$2;
.super Ljava/lang/Object;
.source "TutorialUIHelper.java"

# interfaces
.implements Lcom/amazon/foundation/IValueGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/IValueGetter<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$2;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .locals 0

    .line 177
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$2;->getValue(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$2;->val$obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    return-object p1
.end method
