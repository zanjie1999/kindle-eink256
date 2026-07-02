.class public Lcom/amazon/bookwizard/service/State;
.super Ljava/util/HashMap;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GOODREADS:Ljava/lang/String; = "GOODREADS"

.field private static final KEY_REC_SOURCE:Ljava/lang/String; = "recSourceId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecSourceId()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "recSourceId"

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isGoodreads()Z
    .locals 2

    const-string/jumbo v0, "recSourceId"

    .line 39
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GOODREADS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
