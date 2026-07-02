.class public final enum Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 93
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->PENDING:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    .line 97
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->RUNNING:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    .line 101
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->FINISHED:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    .line 89
    sget-object v5, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->PENDING:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->RUNNING:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;
    .locals 1

    .line 89
    const-class v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$Status;

    return-object v0
.end method
