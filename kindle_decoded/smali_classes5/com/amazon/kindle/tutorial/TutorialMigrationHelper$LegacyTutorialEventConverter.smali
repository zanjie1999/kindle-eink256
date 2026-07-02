.class final enum Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;
.super Ljava/lang/Enum;
.source "TutorialMigrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LegacyTutorialEventConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

.field public static final enum BOOK_OPEN:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

.field public static final enum CHROME_OPEN:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;


# instance fields
.field private final event:Ljava/lang/String;

.field private final legacyEvent:Lcom/amazon/kindle/event/TutorialEvent;

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 85
    new-instance v6, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    new-instance v5, Lcom/amazon/kindle/event/TutorialEvent;

    sget-object v0, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-direct {v5, v0}, Lcom/amazon/kindle/event/TutorialEvent;-><init>(Lcom/amazon/kindle/krx/tutorial/events/EventType;)V

    const-string v1, "CHROME_OPEN"

    const/4 v2, 0x0

    const-string v3, "Reader"

    const-string v4, "ChromeOpen"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/event/TutorialEvent;)V

    sput-object v6, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->CHROME_OPEN:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    .line 86
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    new-instance v12, Lcom/amazon/kindle/event/TutorialEvent;

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->BOOK_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-direct {v12, v1}, Lcom/amazon/kindle/event/TutorialEvent;-><init>(Lcom/amazon/kindle/krx/tutorial/events/EventType;)V

    const-string v8, "BOOK_OPEN"

    const/4 v9, 0x1

    const-string v10, "Reader"

    const-string v11, "BookOpenStart"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/event/TutorialEvent;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->BOOK_OPEN:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    .line 84
    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->CHROME_OPEN:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->$VALUES:[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/event/TutorialEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/event/TutorialEvent;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->topic:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->event:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->legacyEvent:Lcom/amazon/kindle/event/TutorialEvent;

    return-void
.end method

.method public static convertUTMToLegacyEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/event/TutorialEvent;
    .locals 5

    .line 100
    invoke-static {}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->values()[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 101
    iget-object v4, v3, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->topic:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->event:Ljava/lang/String;

    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object p0, v3, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->legacyEvent:Lcom/amazon/kindle/event/TutorialEvent;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;
    .locals 1

    .line 84
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->$VALUES:[Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    invoke-virtual {v0}, [Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorialEventConverter;

    return-object v0
.end method
