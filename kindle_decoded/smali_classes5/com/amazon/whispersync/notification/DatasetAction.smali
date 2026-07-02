.class public Lcom/amazon/whispersync/notification/DatasetAction;
.super Ljava/lang/Object;
.source "DatasetAction.java"


# static fields
.field public static final Created:Ljava/lang/String; = "Created"

.field public static final Deleted:Ljava/lang/String; = "Deleted"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Created"

    const-string v1, "Deleted"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/notification/DatasetAction;->values:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/whispersync/notification/DatasetAction;->values:[Ljava/lang/String;

    return-object v0
.end method
