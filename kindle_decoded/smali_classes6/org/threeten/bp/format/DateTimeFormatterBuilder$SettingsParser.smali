.class final enum Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingsParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;",
        ">;",
        "Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum INSENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum LENIENT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum SENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum STRICT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2130
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    const/4 v1, 0x0

    const-string v2, "SENSITIVE"

    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2131
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    const/4 v2, 0x1

    const-string v3, "INSENSITIVE"

    invoke-direct {v0, v3, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2132
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    const/4 v3, 0x2

    const-string v4, "STRICT"

    invoke-direct {v0, v4, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2133
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    const/4 v4, 0x3

    const-string v5, "LENIENT"

    invoke-direct {v0, v5, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2129
    sget-object v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v6, v5, v1

    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v5, v2

    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;
    .locals 1

    .line 2129
    const-class v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;
    .locals 1

    .line 2129
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method


# virtual methods
.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2155
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "ParseStrict(false)"

    return-object v0

    .line 2161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "ParseStrict(true)"

    return-object v0

    :cond_2
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    :cond_3
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0
.end method
