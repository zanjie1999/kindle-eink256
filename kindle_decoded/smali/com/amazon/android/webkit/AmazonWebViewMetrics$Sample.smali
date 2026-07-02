.class public Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;
.super Ljava/lang/Object;
.source "AmazonWebViewMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonWebViewMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field private final count:I

.field private final unit:Ljava/lang/String;

.field private final value:D


# direct methods
.method public constructor <init>(DILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;->value:D

    .line 28
    iput p3, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;->count:I

    .line 29
    iput-object p4, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;->count:I

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebViewMetrics$Sample;->value:D

    return-wide v0
.end method
