.class public Lcom/amazon/android/webkit/AmazonWebStorage$Origin;
.super Ljava/lang/Object;
.source "AmazonWebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonWebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private final mOrigin:Ljava/lang/String;

.field private final mQuota:J

.field private final mUsage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/amazon/android/webkit/AmazonWebStorage$Origin;->mQuota:J

    .line 24
    iput-wide p4, p0, Lcom/amazon/android/webkit/AmazonWebStorage$Origin;->mUsage:J

    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebStorage$Origin;->mUsage:J

    return-wide v0
.end method
