.class public final Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManagerKt;
.super Ljava/lang/Object;
.source "ReadingActionsWeblabManager.kt"


# static fields
.field private static final C_TREATMENT:Ljava/lang/String; = "C"

.field private static final T1_TREATMENT:Ljava/lang/String; = "T1"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/readingactions/helpers/ReadingActionsWeblabManagerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
