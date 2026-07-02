.class public Lcom/audible/mobile/stats/domain/ListeningLevel;
.super Ljava/lang/Object;
.source "ListeningLevel.java"


# instance fields
.field private mEarned:Z

.field private mRequiredHours:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningLevel;->mTitle:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/audible/mobile/stats/domain/ListeningLevel;->mEarned:Z

    .line 13
    iput p3, p0, Lcom/audible/mobile/stats/domain/ListeningLevel;->mRequiredHours:I

    return-void
.end method


# virtual methods
.method public setEarned(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/audible/mobile/stats/domain/ListeningLevel;->mEarned:Z

    return-void
.end method
