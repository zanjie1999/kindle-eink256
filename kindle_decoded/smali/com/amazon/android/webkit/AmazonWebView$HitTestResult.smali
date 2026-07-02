.class public Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;
.super Ljava/lang/Object;
.source "AmazonWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HitTestResult"
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private final extra:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;->type:I

    .line 92
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;->extra:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/webkit/AmazonWebView;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;->type:I

    return v0
.end method
