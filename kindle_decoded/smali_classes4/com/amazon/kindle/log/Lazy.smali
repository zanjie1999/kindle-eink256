.class public Lcom/amazon/kindle/log/Lazy;
.super Ljava/lang/Object;
.source "Lazy.java"

# interfaces
.implements Lcom/amazon/kindle/log/ILazy;


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final formatString:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/log/Lazy;->locale:Ljava/util/Locale;

    .line 28
    iput-object p2, p0, Lcom/amazon/kindle/log/Lazy;->formatString:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amazon/kindle/log/Lazy;->args:[Ljava/lang/Object;

    return-void
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;
    .locals 1

    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/kindle/log/Lazy;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/log/Lazy;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public evaluate()Ljava/lang/String;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/log/Lazy;->args:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 68
    aget-object v2, v0, v1

    instance-of v2, v2, Lcom/amazon/kindle/log/ILazy;

    if-eqz v2, :cond_1

    .line 69
    aget-object v2, v0, v1

    if-eq v2, p0, :cond_0

    .line 72
    aget-object v2, v0, v1

    check-cast v2, Lcom/amazon/kindle/log/ILazy;

    invoke-interface {v2}, Lcom/amazon/kindle/log/ILazy;->evaluate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lazy object added to itself as an argument!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/log/Lazy;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/amazon/kindle/log/Lazy;->formatString:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
