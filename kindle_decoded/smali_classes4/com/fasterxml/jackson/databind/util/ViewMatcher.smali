.class public Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.super Ljava/lang/Object;
.source "ViewMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;,
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static construct([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ViewMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/util/ViewMatcher;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 18
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    return-object p0

    .line 20
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 26
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;-><init>([Ljava/lang/Class;)V

    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 22
    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher;->EMPTY:Lcom/fasterxml/jackson/databind/util/ViewMatcher;

    return-object p0
.end method


# virtual methods
.method public isVisibleForView(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
