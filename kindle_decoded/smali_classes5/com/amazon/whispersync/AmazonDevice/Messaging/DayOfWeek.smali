.class public final enum Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum All:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Fri:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Mon:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Sat:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Sun:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Thu:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Tue:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

.field public static final enum Wed:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;


# instance fields
.field private final mDayOfWeek:Ljava/lang/Integer;

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Sun"

    const-string/jumbo v5, "sun"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Sun:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Mon"

    const-string v6, "mon"

    invoke-direct {v0, v5, v1, v6, v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Mon:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Tue"

    const-string/jumbo v7, "tue"

    invoke-direct {v0, v6, v2, v7, v5}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Tue:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Wed"

    const-string/jumbo v8, "wed"

    invoke-direct {v0, v7, v4, v8, v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Wed:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Thu"

    const-string/jumbo v9, "thu"

    invoke-direct {v0, v8, v5, v9, v7}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Thu:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Fri"

    const-string v10, "fri"

    invoke-direct {v0, v9, v6, v10, v8}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Fri:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 14
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Sat"

    const-string/jumbo v11, "sat"

    invoke-direct {v0, v10, v7, v11, v9}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Sat:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const-string v9, "All"

    const-string v10, "all"

    const/4 v11, 0x0

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->All:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    .line 6
    sget-object v10, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Sun:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v10, v9, v3

    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Mon:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v3, v9, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Tue:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Wed:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Thu:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Fri:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->Sat:Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->mValue:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->mDayOfWeek:Ljava/lang/Integer;

    return-void
.end method

.method public static getDayOfWeek(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;
    .locals 5

    .line 38
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->values()[Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public getDayOfWeek()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->mDayOfWeek:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->mValue:Ljava/lang/String;

    return-object v0
.end method
