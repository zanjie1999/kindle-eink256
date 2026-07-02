.class Ljavassist/bytecode/SignatureAttribute$Cursor;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cursor"
.end annotation


# instance fields
.field position:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/bytecode/SignatureAttribute$1;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>()V

    return-void
.end method


# virtual methods
.method indexOf(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 169
    iget v0, p0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_0

    add-int/lit8 p1, p2, 0x1

    .line 172
    iput p1, p0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    return p2

    .line 171
    :cond_0
    invoke-static {p1}, Ljavassist/bytecode/SignatureAttribute;->access$000(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object p1

    throw p1
.end method
