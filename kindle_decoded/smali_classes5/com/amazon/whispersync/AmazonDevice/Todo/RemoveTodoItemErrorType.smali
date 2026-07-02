.class public final enum Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;
.super Ljava/lang/Enum;
.source "RemoveTodoItemErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

.field public static final enum RemoveTodoItemErrorTypeNoError:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

.field public static final enum RemoveTodoItemErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    const/4 v1, 0x0

    const-string v2, "RemoveTodoItemErrorTypeNoError"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;->RemoveTodoItemErrorTypeNoError:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    const/4 v2, 0x1

    const-string v3, "RemoveTodoItemErrorTypeUnrecognized"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;->RemoveTodoItemErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    .line 4
    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;->RemoveTodoItemErrorTypeNoError:Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Todo/RemoveTodoItemErrorType;

    return-object v0
.end method
