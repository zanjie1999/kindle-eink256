.class public Lcom/amazon/android/webkit/AmazonConsoleMessage;
.super Ljava/lang/Object;
.source "AmazonConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;
    }
.end annotation


# instance fields
.field private final level:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

.field private final lineNumber:I

.field private final message:Ljava/lang/String;

.field private final sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->message:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->sourceId:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->lineNumber:I

    .line 36
    iput-object p4, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->level:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-void
.end method


# virtual methods
.method public lineNumber()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->lineNumber:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->level:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonConsoleMessage;->sourceId:Ljava/lang/String;

    return-object v0
.end method
